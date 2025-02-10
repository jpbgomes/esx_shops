ESX = exports["es_extended"]:getSharedObject()

local dbItems = nil

ESX.RegisterServerCallback('esx_shops:getData', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.fetchAll('SELECT * FROM items', {}, function(result)
		if result and #result > 0 then
			dbItems = result
			cb(result)
		else
			cb(nil)
		end
	end)
end)

local function GetLabelFromDbItems(itemName)
	if dbItems then
		for _, dbItem in ipairs(dbItems) do
			if dbItem.name == itemName then
				return dbItem.label
			end
		end
	end
	return nil
end

function GetItemFromShop(itemName, zone)
	local zoneItems = zone.Items
	local item = nil

	for _, itemData in pairs(zoneItems) do
		if itemData.name == itemName then
			local dbLabel = GetLabelFromDbItems(itemName)
			if dbLabel then
				itemData.label = dbLabel
			end
			item = itemData
			break
		end
	end

	if not item then
		return false
	end

	return item
end

RegisterServerEvent('esx_shops:buyItem')
AddEventHandler('esx_shops:buyItem', function(itemName, amount, zone)
	local source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	local itemData = GetItemFromShop(itemName, zone)
	amount = ESX.Math.Round(amount)

	if amount < 0 then
		print(('[^3WARNING^7] Player ^5%s^7 attempted to exploit the shop!'):format(source))
		return
	end

	if not itemData then
		print(('[^3WARNING^7] Player ^5%s^7 attempted to exploit the shop!'):format(source))
		return
	end

	if itemData then
		if itemData.needLicense then
			MySQL.Async.fetchAll('SELECT * FROM user_licenses WHERE owner = @owner AND type = @type', {
				['@owner'] = xPlayer.identifier,
				['@type'] = itemData.licenseName
			}, function(result)
					if result and #result > 0 then
						local finalPrice = ESX.Math.Round(itemData.price) * ESX.Math.Round(amount)
	
						if xPlayer.getMoney() >= finalPrice then
							if not itemData.isWeapon then
								if xPlayer.canCarryItem(itemName, amount) then
									xPlayer.removeMoney(finalPrice, itemData.label .. " " .. TranslateCap('purchase'))
									xPlayer.addInventoryItem(itemName, amount)
									xPlayer.showNotification(TranslateCap('bought', amount, itemData.label, ESX.Math.GroupDigits(finalPrice)))
					
									TriggerEvent('van_essentials:sendLogs', Config.Webhook, '🎒 Lojas', 'Comprou ' .. amount .. 'x "' .. itemName .. '" e gastou ' .. finalPrice .. '€', xPlayer)
								else
									xPlayer.showNotification(TranslateCap('player_cannot_hold'))
								end
							else
								if not xPlayer.hasWeapon(itemName) then
									xPlayer.removeMoney(finalPrice, itemData.label .. " " .. TranslateCap('purchase'))
									xPlayer.addWeapon(itemName, itemData.ammo)
									xPlayer.showNotification(TranslateCap('bought', amount, itemData.label, ESX.Math.GroupDigits(finalPrice)))
								
									TriggerEvent('van_essentials:sendLogs', Config.Webhook, '🎒 Lojas', 'Comprou ' .. amount .. 'x "' .. itemName .. '" e gastou ' .. finalPrice .. '€', xPlayer)
								else
									xPlayer.showNotification(TranslateCap('player_cannot_hold_weapon'))
								end
							end
						else
							local missingMoney = finalPrice - xPlayer.getMoney()
							xPlayer.showNotification(TranslateCap('not_enough', ESX.Math.GroupDigits(missingMoney)))
						end
					else
						xPlayer.showNotification('Não tens a licença de porte-arma')
					end
			end)
		else
			local finalPrice = ESX.Math.Round(itemData.price) * ESX.Math.Round(amount)

			if xPlayer.getMoney() >= finalPrice then
				if not itemData.isWeapon then
					if xPlayer.canCarryItem(itemName, amount) then
						xPlayer.removeMoney(finalPrice, itemData.label .. " " .. TranslateCap('purchase'))
						xPlayer.addInventoryItem(itemName, amount)
						xPlayer.showNotification(TranslateCap('bought', amount, itemData.label, ESX.Math.GroupDigits(finalPrice)))
		
						TriggerEvent('van_essentials:sendLogs', Config.Webhook, '🎒 Lojas', 'Comprou ' .. amount .. 'x "' .. itemName .. '" e gastou ' .. finalPrice .. '€', xPlayer)
					else
						xPlayer.showNotification(TranslateCap('player_cannot_hold'))
					end
				else
					if not xPlayer.hasWeapon(itemName) then
						xPlayer.removeMoney(finalPrice, itemData.label .. " " .. TranslateCap('purchase'))
						xPlayer.addWeapon(itemName, itemData.ammo)
						xPlayer.showNotification(TranslateCap('bought', amount, itemData.label, ESX.Math.GroupDigits(finalPrice)))
					
						TriggerEvent('van_essentials:sendLogs', Config.Webhook, '🎒 Lojas', 'Comprou ' .. amount .. 'x "' .. itemName .. '" e gastou ' .. finalPrice .. '€', xPlayer)
					else
						xPlayer.showNotification(TranslateCap('player_cannot_hold_weapon'))
					end
				end
			else
				local missingMoney = finalPrice - xPlayer.getMoney()
				xPlayer.showNotification(TranslateCap('not_enough', ESX.Math.GroupDigits(missingMoney)))
			end
		end
	end
end)

RegisterServerEvent('esx_shops:sellItem')
AddEventHandler('esx_shops:sellItem', function(itemName, amount, zone)
    local source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local itemData = GetItemFromShop(itemName, zone)
    amount = ESX.Math.Round(amount)

    if amount <= 0 then
      print(('[^3WARNING^7] Player ^5%s^7 attempted to exploit the shop!'):format(source))
      return
    end

    if not itemData then
      print(('[^3WARNING^7] Player ^5%s^7 attempted to sell an invalid item!'):format(source))
      return
    end

    local playerItemCount = xPlayer.getInventoryItem(itemName).count

    if playerItemCount < amount then
      xPlayer.showNotification(TranslateCap('not_enough_items', itemData.label))
      return
    end

    local sellPrice = itemData.price * amount

    if not itemData.isWeapon then
      xPlayer.removeInventoryItem(itemName, amount)
      xPlayer.addMoney(sellPrice, itemData.label .. " " .. TranslateCap('sale'))
      xPlayer.showNotification(TranslateCap('sold', amount, itemData.label, ESX.Math.GroupDigits(sellPrice)))

      TriggerEvent('van_essentials:sendLogs', Config.Webhook, '🎒 Lojas', 'Vendeu ' .. amount .. 'x "' .. itemName .. '" e recebeu ' .. sellPrice .. '€', xPlayer)
    else
      if xPlayer.hasWeapon(itemName) then
        xPlayer.removeWeapon(itemName)
        xPlayer.addMoney(sellPrice, itemData.label .. " " .. TranslateCap('sale'))
        xPlayer.showNotification(TranslateCap('sold', amount, itemData.label, ESX.Math.GroupDigits(sellPrice)))

        TriggerEvent('van_essentials:sendLogs', Config.Webhook, '🎒 Lojas', 'Vendeu "' .. itemName .. '" e recebeu ' .. sellPrice .. '€', xPlayer)
      else
        xPlayer.showNotification(TranslateCap('no_weapon_to_sell'))
      end
    end
end)
