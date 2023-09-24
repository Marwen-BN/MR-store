Config = {}

Config.PayMethod = 'cash' -- cash, bank

Config.Items = {
    ['water'] = {
        display = "water",
        price = 10,
        description = "",
    },
    ['bread'] = {
        display = "bread",
        price = 10,
        description = "",
    },
    ['bandage'] = {
        display = "bandage",
        price = 10,
        description = "",
    },
    ['fieldbandage'] = {
        display = "revive horse",
        price = 10,
        description = "",
    },
    ['horselantern'] = {
        display = "horselantern",
        price = 10,
        description = "",
	 },
      ['goldpan'] = {
        display = "goldpan",
        price = 10,
        description = "",
    },
	    ['goldsmelt'] = {
        display = "goldsmelt",
        price = 10,
        description = "",
    },
    ['campfire'] = {
        display = "campfire",
        price = 10,
        description = "",
    },
    ['shovel'] = {
        display = "shovel",
        price = 10,
        description = "",
    },
    ['axe'] = {
        display = "axe",
        price = 10,
        description = "",
    },
    ['pickaxe'] = {
        display = "pickaxe",
        price = 10,
        description = "",
	 },
        ['weapon_kit_binoculars'] = {
        display = "kit binoculars",
        price = 10,
        description = "",
    },

	  ['weapon_kit_binoculars_improved'] = {
        display = "binoculars improved",
        price = 10,
        description = "",
    },

    ['weapon_kit_metal_detector'] = {
        display = "kit metal detector",
        price = 10,
        description = "",
    },
    ['indiancigar'] = {
        display = "indian cigar",
        price = 10,
        description = "",
	 },
        ['horsereviver'] = {
        display = "horset carrot",
        price = 10,
        description = "",
    },
    	
	    ['birdpost'] = {
        display = "birdpost",
        price = 10,
        description = "",
    },
	    ['horseholster'] = {
        display = "horse holster",
        price = 10,
        description = "",
    },
    ['carrot'] = {
        display = "carrot",
        price = 10,
        description = "",
    },
    ['sugarcube'] = {
        display = "sugarcube",
        price = 10,
        description = "",
    },
    ['horsebrush'] = {
        display = "horse brush",
        price = 10,
        description = "",
    },
    ['syringe'] = {
        display = "syringe",
        price = 10,
        description = "",

    },

}

Config.Locale = {
    buyed = "Purchase Done, paid $%s.",
    nomoney = "You Don't have money!",
}


Config.Shops = {
        { shopcoords = vector3(3027.03, 561.00, 44.72 -0.8),  name = "General Store", blipsprite = 1475879922, blipscale = 0.2, showblip = true },
        { shopcoords = vector3(-785.18, -1323.83, 43.88 -0.8),  name = "General Store", blipsprite = 1475879922, blipscale = 0.2, showblip = true },
        { shopcoords = vector3(-3685.56, -2622.59, -13.43 -0.8),  name = "General Store", blipsprite = 1475879922, blipscale = 0.2, showblip = true },
        { shopcoords = vector3(-5487.613, -2938.54, -0.38 -0.8),  name = "General Store", blipsprite = 1475879922, blipscale = 0.2, showblip = true },
        { shopcoords = vector3(2859.81, -1200.37, 49.59 -0.8),  name = "General Store", blipsprite = 1475879922, blipscale = 0.2, showblip = true },
        { shopcoords = vector3(2931.35, 1365.94, 45.19 -0.8),  name = "General Store", blipsprite = 1475879922, blipscale = 0.2, showblip = true },
        { shopcoords = vector3(-1791.49, -386.87, 160.33 -0.8),  name = "General Store", blipsprite = 1475879922, blipscale = 0.2, showblip = true },
        { shopcoords = vector3(-322.433, 803.797, 117.882 -0.8),  name = "General Store", blipsprite = 1475879922, blipscale = 0.2, showblip = true },
        { shopcoords = vector3(1328.99, -1293.28, 77.02 -0.8),  name = "General Store", blipsprite = 1475879922, blipscale = 0.2, showblip = true },

}
 
-- tack shop npcs
Config.ModelSpawns = {
    ["Armadillo"] = {
        ["coords"] = vector3(-3687.33, -2623.59, -13.43),
        ["heading"] = 269.43,
        ["model"] = `a_f_m_lagtownfolk_01`,
    },
    ["Annesburg"] = {
        ["coords"] = vector3(2931.35, 1365.94, 45.19),
        ["heading"] = 253.9,
        ["model"] = `a_f_m_lagtownfolk_01`,
    },
    ["saintdenis"] = {
        ["coords"] = vector3(2859.41, -1202.25, 49.59),
        ["heading"] = 4.43,
        ["model"] = `a_f_m_lagtownfolk_01`,
    }, 
    ["rhodes"] = {
        ["coords"] = vector3(1329.91, -1294.14, 77.02),
        ["heading"] = 65.5,
        ["model"] = `a_f_m_lagtownfolk_01`,
    },
    ["valentine"] = {
        ["coords"] = vector3(-324.17, 803.67, 117.88),
        ["heading"] = 287.9,
        ["model"] = `a_f_m_lagtownfolk_01`,
    },
     ["strawberry"] = {
        ["coords"] = vector3(-1789.55, -387.87, 160.33),
        ["heading"] = 61.4,
        ["model"] = `a_f_m_lagtownfolk_01`,
    },
    ["blackwater"] = {
        ["coords"] = vector3(vector3(-785.87, -1322.23, 43.88)),
        ["heading"] = 181.38,
        ["model"] = `a_f_m_lagtownfolk_01`,
    },
    ["tumbleweed"] = {
        ["coords"] = vector3(-5485.84, -2938.08, -0.4),
        ["heading"] = 132.4,
        ["model"] = `a_f_m_lagtownfolk_01`,
	},
    ["vanhorn"] = {
        ["coords"] = vector3(3027.03, 561.00, 44.72),
        ["heading"] = 175.22,
        ["model"] = `a_f_m_lagtownfolk_01`,
    },
    
} 