Config = {}

Config.Webhook = 'https://discord.com/api/webhooks/1327361898651582575/S5Ps-YIyG0sP6G2eJ1tKcJSbOWw2tLsjzfHrZ7QM_-uZMMCf5t5nLCgl5JHyF5p4ohVT'
Config.Locale = GetConvar('esx:locale', 'pt')

Config.Items = {
	Geral = {
		{name = "fixkit", label = TranslateCap("fixkit"), price = 10000, isWeapon = false, ammo = 250},
		{name = "radio", label = TranslateCap("radio"), price = 5000, isWeapon = false, ammo = 250},
		{name = "phone", label = TranslateCap("phone"), price = 5000, isWeapon = false, ammo = 250},
		{name = "burger", label = TranslateCap("burger"), price = 100, isWeapon = false, ammo = 250},
		{name = "pizzaslice", label = TranslateCap("pizzaslice"), price = 100, isWeapon = false, ammo = 250},
		{name = "croissant", label = TranslateCap("croissant"), price = 100, isWeapon = false, ammo = 250},
		{name = "water", label = TranslateCap("water"), price = 100, isWeapon = false, ammo = 250},
		{name = "cola", label = TranslateCap("cola"), price = 100, isWeapon = false, ammo = 250},
		{name = "beer", label = TranslateCap("beer"), price = 100, isWeapon = false, ammo = 250},
		{name = "whiskey", label = TranslateCap("whiskey"), price = 100, isWeapon = false, ammo = 250},
		{name = "wine", label = TranslateCap("wine"), price = 100, isWeapon = false, ammo = 250},
		{name = "pano", label = TranslateCap("pano"), price = 250, isWeapon = false, ammo = 250},
		{name = "bag", label = TranslateCap("bag"), price = 500, isWeapon = false, ammo = 250},
		{name = "contract", label = TranslateCap("contract"), price = 500, isWeapon = false, ammo = 250},
		{name = "baldevazio", label = TranslateCap("baldevazio"), price = 1000, isWeapon = false, ammo = 250},
		{name = "tesoura", label = TranslateCap("tesoura"), price = 500, isWeapon = false, ammo = 250},
		{name = "pneumatico", label = TranslateCap("pneumatico"), price = 2500, isWeapon = false, ammo = 250},
		{name = "hifi", label = TranslateCap("hifi"), price = 500, isWeapon = false, ammo = 250},
		{name = "mortalhas", label = TranslateCap("mortalhas"), price = 100, isWeapon = false, ammo = 250},
	},

	Drinks = {
		{name = "water", label = TranslateCap("water"), price = 50, isWeapon = false, ammo = 250},
		{name = "cola", label = TranslateCap("cola"), price = 50, isWeapon = false, ammo = 250},
		{name = "beer", label = TranslateCap("beer"), price = 50, isWeapon = false, ammo = 250},
		{name = "whiskey", label = TranslateCap("whiskey"), price = 50, isWeapon = false, ammo = 250},
		{name = "wine", label = TranslateCap("wine"), price = 50, isWeapon = false, ammo = 250},
		{name = "hifi", label = TranslateCap("hifi"), price = 500, isWeapon = false, ammo = 250},
	},

	Weed = {
		{name = "charro", label = TranslateCap("charro"), price = 750, isWeapon = false, ammo = 250},
		{name = "mortalhas", label = TranslateCap("mortalhas"), price = 50, isWeapon = false, ammo = 250},
	},

	YouTool = {
		{name = "radio", label = TranslateCap("radio"), price = 5000, isWeapon = false, ammo = 250},
		{name = "phone", label = TranslateCap("phone"), price = 5000, isWeapon = false, ammo = 250},
		{name = "laptop", label = TranslateCap("laptop"), price = 5000, isWeapon = false, ammo = 250},
		{name = "oxygentank", label = TranslateCap("oxygentank"), price = 25000, isWeapon = false, ammo = 250},
		{name = "tesoura", label = TranslateCap("tesoura"), price = 500, isWeapon = false, ammo = 250},
		{name = "lockpick", label = TranslateCap("lockpick"), price = 1000, isWeapon = false, ammo = 250},
		{name = "drugmask", label = TranslateCap("drugmask"), price = 2500, isWeapon = false, ammo = 250},
		{name = "binoculars", label = TranslateCap("binoculars"), price = 2500, isWeapon = false, ammo = 250},
		{name = "pneumatico", label = TranslateCap("pneumatico"), price = 2500, isWeapon = false, ammo = 250},
		{name = "baldevazio", label = TranslateCap("baldevazio"), price = 1000, isWeapon = false, ammo = 250},
		{name = "hifi", label = TranslateCap("hifi"), price = 500, isWeapon = false, ammo = 250},
		{name = "mortalhas", label = TranslateCap("mortalhas"), price = 100, isWeapon = false, ammo = 250},
	},

	Ammunation = {
    {name = "pistol_ammo", label = TranslateCap("pistol_ammo"), price = 1000, isWeapon = false, ammo = 1},
    {name = "smg_ammo", label = TranslateCap("smg_ammo"), price = 1000, isWeapon = false, ammo = 1},
    {name = "rifle_ammo", label = TranslateCap("rifle_ammo"), price = 1000, isWeapon = false, ammo = 1},
    {name = "lmg_ammo", label = TranslateCap("lmg_ammo"), price = 1000, isWeapon = false, ammo = 1},
    {name = "sniper_ammo", label = TranslateCap("sniper_ammo"), price = 1000, isWeapon = false, ammo = 1},
    {name = "shotgun_ammo", label = TranslateCap("shotgun_ammo"), price = 1000, isWeapon = false, ammo = 1},
    {name = "WEAPON_SNSPISTOL_MK2", label = TranslateCap("WEAPON_SNSPISTOL_MK2"), price = 300000, isWeapon = true, ammo = 250, needLicense = true, licenseName = 'weapon'},
		{name = "WEAPON_KNIFE", label = TranslateCap("WEAPON_KNIFE"), price = 50000, isWeapon = true, ammo = 250},
		{name = "WEAPON_BAT", label = TranslateCap("WEAPON_BAT"), price = 50000, isWeapon = true, ammo = 250},
		{name = "WEAPON_SWITCHBLADE", label = TranslateCap("WEAPON_SWITCHBLADE"), price = 35000, isWeapon = true, ammo = 250},
		{name = "WEAPON_KNUCKLE", label = TranslateCap("WEAPON_KNUCKLE"), price = 35000, isWeapon = true, ammo = 250},
    {name = "GADGET_PARACHUTE", label = TranslateCap("GADGET_PARACHUTE"), price = 25000, isWeapon = true, ammo = 1},
    {name = "WEAPON_FLASHLIGHT", label = TranslateCap("WEAPON_FLASHLIGHT"), price = 10000, isWeapon = true, ammo = 1},
		{name = "armor", label = TranslateCap("armor"), price = 4000, isWeapon = false, ammo = 1},
    {name = "carregador", label = TranslateCap("carregador"), price = 20000, isWeapon = false, ammo = 1},
    {name = "compensador", label = TranslateCap("compensador"), price = 20000, isWeapon = false, ammo = 0},
    {name = "mira", label = TranslateCap("mira"), price = 20000, isWeapon = false, ammo = 0},
    {name = "muzzle", label = TranslateCap("muzzle"), price = 20000, isWeapon = false, ammo = 0},
    {name = "flashlight", label = TranslateCap("flashlight"), price = 20000, isWeapon = false, ammo = 0},
    {name = "silenciador", label = TranslateCap("silenciador"), price = 20000, isWeapon = false, ammo = 0},
    {name = "grip", label = TranslateCap("grip"), price = 7500, isWeapon = false, ammo = 0},
		{name = "skindourada", label = TranslateCap("skindourada"), price = 1500, isWeapon = false, ammo = 0},
    {name = "skinlove", label = TranslateCap("skinlove"), price = 1000, isWeapon = false, ammo = 0},
    {name = "skinplatina", label = TranslateCap("skinplatina"), price = 1000, isWeapon = false, ammo = 0},
    {name = "skinwood", label = TranslateCap("skinwood"), price = 1000, isWeapon = false, ammo = 0},
    {name = "skincaveira", label = TranslateCap("skincaveira"), price = 1000, isWeapon = false, ammo = 0},
    {name = "skinzebra", label = TranslateCap("skinzebra"), price = 1000, isWeapon = false, ammo = 0},
    {name = "skinboom", label = TranslateCap("skinboom"), price = 1000, isWeapon = false, ammo = 0},
    {name = "skinpimp", label = TranslateCap("skinpimp"), price = 1000, isWeapon = false, ammo = 0},
    {name = "skinballas", label = TranslateCap("skinballas"), price = 1000, isWeapon = false, ammo = 0},
    {name = "skindollar", label = TranslateCap("skindollar"), price = 1000, isWeapon = false, ammo = 0},
    {name = "skindiamond", label = TranslateCap("skindiamond"), price = 1000, isWeapon = false, ammo = 0},
    {name = "skinhate", label = TranslateCap("skinhate"), price = 1000, isWeapon = false, ammo = 0},
    {name = "skinplayer", label = TranslateCap("skinplayer"), price = 1000, isWeapon = false, ammo = 0},
    {name = "skinvagos", label = TranslateCap("skinvagos"), price = 1000, isWeapon = false, ammo = 0},
	},

	Pharmacy = {
		{name = "bandage", label = TranslateCap("bandage"), price = 500, isWeapon = false, ammo = 250},
	},

	Ilegal = {
		{name = "WEAPON_KNIFE", label = TranslateCap("WEAPON_KNIFE"), price = 40000, isWeapon = true, ammo = 250},
		{name = "WEAPON_BAT", label = TranslateCap("WEAPON_BAT"), price = 40000, isWeapon = true, ammo = 250},
		{name = "WEAPON_SWITCHBLADE", label = TranslateCap("WEAPON_SWITCHBLADE"), price = 25000, isWeapon = true, ammo = 250},
		{name = "WEAPON_KNUCKLE", label = TranslateCap("WEAPON_KNUCKLE"), price = 25000, isWeapon = true, ammo = 250},
		{name = "armor", label = TranslateCap("armor"), price = 30000, isWeapon = false, ammo = 1},
		{name = "laptop", label = TranslateCap("laptop"), price = 5000, isWeapon = false, ammo = 250},
		{name = "thermal_charge", label = TranslateCap("thermal_charge"), price = 15000, isWeapon = false, ammo = 250},
		{name = "penkali", label = TranslateCap("penkali"), price = 10000, isWeapon = false, ammo = 250},
		{name = "bag", label = TranslateCap("bag"), price = 350, isWeapon = false, ammo = 250},
	},

	Gas = {
		{name = "WEAPON_PETROLCAN", label = TranslateCap("WEAPON_PETROLCAN"), price = 500, isWeapon = true, ammo = 5000},
	},

	Pawn = {
		{name = "gold", label = TranslateCap("gold"), price = 600, isWeapon = false},
		{name = "iron", label = TranslateCap("iron"), price = 400, isWeapon = false},
		{name = "copper", label = TranslateCap("copper"), price = 200, isWeapon = false},
		{name = "borracha", label = TranslateCap("borracha"), price = 450, isWeapon = false},
		{name = "jewels", label = TranslateCap("jewels"), price = 25000, isWeapon = false},
		{name = "phone", label = TranslateCap("phone"), price = 2000, isWeapon = false},
		{name = "radio", label = TranslateCap("radio"), price = 2000, isWeapon = false},
		{name = "binoculars", label = TranslateCap("binoculars"), price = 750, isWeapon = false},
		{name = "brokenphone", label = TranslateCap("brokenphone"), price = 500, isWeapon = false},
		{name = "brokenradio", label = TranslateCap("brokenradio"), price = 500, isWeapon = false},
	},
}

Config.Zones = {
	Geral = {
		Items = Config.Items.Geral,
		Ped = 's_f_y_sweatshop_01',
		Type = 'normal',

		Shops = {
			{restricted = false, jobs = {""}, coords = vector4(24.2478, -1347.3943, 29.4970, 277.7586)},
			{restricted = false, jobs = {""}, coords = vector4(4466.9722, -4463.6021, 4.2493, 203.5475)},
			{restricted = false, jobs = {""}, coords = vector4(372.4377, 326.4887, 103.5664, 249.8144)},
			{restricted = false, jobs = {""}, coords = vector4(2557.2283, 380.8344, 108.6230, 354.7309)},
			{restricted = false, jobs = {""}, coords = vector4(-3038.9431, 584.4977, 7.9089, 22.6406)},
			{restricted = false, jobs = {""}, coords = vector4(-3242.2280, 1000.0006, 12.8307, 350.7458)},
			{restricted = false, jobs = {""}, coords = vector4(549.0397, 2671.3438, 42.1565, 90.3561)},
			{restricted = false, jobs = {""}, coords = vector4(1960.1193, 3740.0200, 32.3438, 295.7626)},
			{restricted = false, jobs = {""}, coords = vector4(2678.1069, 3279.4087, 55.2411, 324.4276)},
			{restricted = false, jobs = {""}, coords = vector4(1727.8900, 6415.3066, 35.0372, 237.1441)},
			{restricted = false, jobs = {""}, coords = vector4(1134.2186, -982.4685, 46.4158, 273.5447)},
			{restricted = false, jobs = {""}, coords = vector4(-1221.9363, -908.2948, 12.3264, 37.7528)},
			{restricted = false, jobs = {""}, coords = vector4(-1486.2902, -378.0322, 40.1634, 127.2177)},
			{restricted = false, jobs = {""}, coords = vector4(-2966.4465, 390.8808, 15.0433, 75.8665)},
			{restricted = false, jobs = {""}, coords = vector4(1165.9784, 2710.8035, 38.1577, 172.4175)},
			{restricted = false, jobs = {""}, coords = vector4(1392.8535, 3606.4097, 34.9809, 191.5371)},
			{restricted = false, jobs = {""}, coords = vector4(-46.8204, -1757.9803, 29.4210,  44.2234)},
			{restricted = false, jobs = {""}, coords = vector4(1164.7230, -322.8033, 69.2050, 97.2550)},
			{restricted = false, jobs = {""}, coords = vector4(-706.1430, -913.6684, 19.2156, 84.2794)},
			{restricted = false, jobs = {""}, coords = vector4(-1820.0862, 794.1062, 138.0893, 125.6237)},
			{restricted = false, jobs = {""}, coords = vector4(1698.0414, 4922.9648, 42.0636, 325.7858)},
		},

		Name = "Lojas 24/7",
		Size  = 0.8,
		Sprite  = 59,
		Color = 25,
		ShowBlip = true
	},

	Ammunations = {
		Items = Config.Items.Ammunation,
		Ped = 's_m_m_chemsec_01',
		Type = 'normal',

		Shops = {
			{restricted = false, jobs = {""}, coords = vector4(-331.3265, 6085.7188, 31.4548, 219.2973)},
			{restricted = false, jobs = {""}, coords = vector4(1692.7466, 3761.4546, 34.7054, 221.3387)},
			{restricted = false, jobs = {""}, coords = vector4(-1118.6836, 2700.3489, 18.5541, 224.7533)},
			{restricted = false, jobs = {""}, coords = vector4(-3173.5610, 1089.1011, 20.8387, 248.6642)},
			{restricted = false, jobs = {""}, coords = vector4(2567.4343, 292.5196, 108.7349, 11.9997)},
			{restricted = false, jobs = {""}, coords = vector4(253.9111, -51.2404, 69.9411, 68.5948)},
			{restricted = false, jobs = {""}, coords = vector4(-1304.2517, -395.2207, 36.6958, 81.1501)},
			{restricted = false, jobs = {""}, coords = vector4(-661.7836, -933.2867, 21.8292, 182.3265)},
			{restricted = false, jobs = {""}, coords = vector4(842.2203, -1035.6239, 28.1948, 359.1799)},
			{restricted = false, jobs = {""}, coords = vector4(810.0098, -2159.1521, 29.6190, 8.6908)},
			{restricted = false, jobs = {""}, coords = vector4(23.0596, -1105.6522, 29.7970, 162.3393)},
		},

		Name = "Ammunation",
		Size  = 0.8,
		Sprite  = 110,
		Color = 1,
		ShowBlip = true
	},

	YouTools = {
		Items = Config.Items.YouTool,
		Ped = 's_f_y_sweatshop_01',
		Type = 'normal',

		Shops = {
			{restricted = false, jobs = {""}, coords = vector4(2738.0405, 3461.6636, 55.6956, 350.0)}, 
		},

		Name = "YouTool",
		Size  = 0.8,
		Sprite  = 402,
		Color = 38,
		ShowBlip = true
	},
	
	Pharmacy = {
		Items = Config.Items.Pharmacy,
		Ped = 's_m_m_scientist_01',
		Type = 'normal',

		Shops = {
			{restricted = false, jobs = {""}, coords = vector4(-508.9540, 292.6224, 83.3881, 175.9991)}, 
		},

		Name = "Farmácia",
		Size  = 0.8,
		Sprite  = 402,
		Color = 38,
		ShowBlip = false
	},

	Ilegal = {
		Items = Config.Items.Ilegal,
		Ped = 'ig_claypain',
		Type = 'normal',

		Shops = {
			{restricted = false, jobs = {""}, coords = vector4(714.7745, 4100.4307, 35.7852, 87.9986)},
		},

		Name = "Loja Ilegal",
		Size  = 0.8,
		Sprite  = 402,
		Color = 38,
		ShowBlip = false
	},

	Weed = {
		Items = Config.Items.Weed,
		Ped = 's_f_y_sweatshop_01',
		Type = 'normal',

		Shops = {
			{restricted = false, jobs = {""}, coords = vector4(-1170.9385, -1570.9036, 4.6636, 127.3612)},
		},

		Name = "Loja de Weed",
		Size  = 0.8,
		Sprite  = 469,
		Color = 69,
		ShowBlip = true
	},

	Gas = {
		Items = Config.Items.Gas,
		Ped = 'g_m_y_salvagoon_01',
		Type = 'normal',

		Shops = {
			{restricted = false, jobs = {""}, coords = vector4(5154.0537, -5126.1777, 2.2773, 227.5390)},
		},

		Name = "Sr da Gasolina",
		Size  = 0.8,
		Sprite  = 361,
		Color = 1,
		ShowBlip = true
	},

	Vanilla = {
		Items = Config.Items.Drinks,
		Ped = 's_f_y_sweatshop_01',
		Type = 'normal',

		Shops = {
			{restricted = true, jobs = {"vanilla"}, coords = vector4(129.3194, -1283.8380, 29.2693, 115.0489)}, 
		},

		Name = "Vanilla",
		Size  = 0.8,
		Sprite  = 93,
		Color = 8,
		ShowBlip = true
	},

	Pawn = {
		Items = Config.Items.Pawn,
		Ped = 's_m_m_trucker_01',
		Type = 'pawn',

		Shops = {
			{restricted = false, jobs = {""}, coords = vector4(-221.5150, 6232.2407, 31.7864, 41.7567)},
		},

		Name = "Pawn Shop",
		Size  = 0.8,
		Sprite  = 66,
		Color = 47,
		ShowBlip = true
	},
}