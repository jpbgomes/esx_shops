ESX = exports["es_extended"]:getSharedObject()

local PlayerData = {}
local dbItems = {}
local pedHandles = {}

Citizen.CreateThread(function()
	while true do
    local sleep = 60000
		ESX.TriggerServerCallback('esx_shops:getData', function(cb)
			dbItems = cb or {}
		end)
		Citizen.Wait(sleep)
	end
end)

Citizen.CreateThread(function()
  while true do
    local sleep = 1500
    PlayerData = ESX.GetPlayerData()
    Citizen.Wait(sleep)
  end
end)

CreateThread(function()
	for i, zone in pairs(Config.Zones) do
		if zone.Shops then
			for k, shop in ipairs(zone.Shops) do
				if zone.ShowBlip then
					createBlip(shop.coords, zone.Sprite, zone.Size, zone.Color, zone.Name)
				end

				createPed(zone.Ped, shop.coords)
				exports.qtarget:AddBoxZone('ESX_Shop'..i..'-'..k, shop.coords, 1.0, 1.5,
					{
						debugPoly = false,
						name = 'ESX_Shop'..i..'-'..k,
						heading = shop.coords[4],
						minZ = shop.coords.z - 1.0,
						maxZ = shop.coords.z + 1.5
					}, {
						options = {{
							icon = 'fas fa-wallet',
							label = 'Aceder à Loja',
							event = 'esx_shops:openShop',
							zoneData = zone,
							shopData = shop,
						}},
						distance = 2.0
					}
				)
			end
		end
	end
end)

RegisterNetEvent("esx_shops:openShop")
AddEventHandler("esx_shops:openShop", function(data)
	local hasAcess = false
	if data.shopData.restricted ~= nil and data.shopData.restricted == true then
		for i, jobName in ipairs(data.shopData.jobs) do
			if jobName == PlayerData.job.name then
				hasAcess = true
				break
			end
		end
	else
		hasAcess = true
	end

	if hasAcess then
		local elements = {}

		for i=1, #data.zoneData.Items, 1 do
			local item = data.zoneData.Items[i]

			local dbItemData = nil
			for j = 1, #dbItems, 1 do
				if dbItems[j].name == item.name then
					dbItemData = dbItems[j]
					break
				end
			end

			elements[#elements+1] = {
				name = item.name,
				label = dbItemData and dbItemData.label or item.label,
				type = "item_standard",
				usable = false,
				rare = item.rare,
				limit = -1,
				price = item.price,
				canRemove = false
			}
		end

		if data.zoneData.Type == "pawn" then
			TriggerEvent("esx_inventoryhud:openPawn", data.zoneData, elements)
		elseif data.zoneData.Type == "normal" then
			TriggerEvent("esx_inventoryhud:openShop", data.zoneData, elements)
		end
	else
		ESX.ShowNotification(TranslateCap('no_access'))
	end
end)

function createBlip(coords, sprite, size, color, name)
	local blip = AddBlipForCoord(coords)
					
	SetBlipSprite(blip, sprite)
	SetBlipScale(blip, size)
	SetBlipColour(blip, color)
	SetBlipAsShortRange(blip, true)

	BeginTextCommandSetBlipName('STRING')
	AddTextComponentSubstringPlayerName(name)
	EndTextCommandSetBlipName(blip)
end

function createPed(model, coords)
	RequestModel(model)
	while not HasModelLoaded(model) do
		Citizen.Wait(1)
	end

	local ped = CreatePed(4, model, coords.x, coords.y, coords.z - 1, coords[4], false, true)	
	SetEntityHeading(ped, coords[4])
	SetEntityInvincible(ped, true)
	SetBlockingOfNonTemporaryEvents(ped, true)
	TaskSetBlockingOfNonTemporaryEvents(ped, true)
	FreezeEntityPosition(ped, true)

	table.insert(pedHandles, ped)
end