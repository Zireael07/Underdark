--Veins of the Earth
--Zireael 2013-2015

local Talents = require "engine.interface.ActorTalents"

--Simple weapons
newEntity{
    define_as = "BASE_WEAPON",
    slot = "MAIN_HAND", offslot = "OFF_HAND",
    type = "weapon",
    egos = "/data/general/objects/properties/weapons.lua", egos_chance = { prefix=30, suffix=70},
}

newEntity{
    define_as = "BASE_WEAPON_TWOHANDED",
    slot = "MAIN_HAND", slot_forbid = "OFF_HAND",
    type = "weapon",
    egos = "/data/general/objects/properties/weapons.lua", egos_chance = { prefix=30, suffix=70},
}

newEntity{ base = "BASE_WEAPON",
    define_as = "BASE_DAGGER",
    type = "weapon", subtype="dagger",
    image = "tiles/object/dagger.png",
    display = "|", color=colors.SLATE,
    moddable_tile = resolvers.moddable_tile("dagger"),
    encumber = 3,
    rarity = 8,
    combat = { sound = "actions/melee", sound_miss = "actions/melee_miss", },
    desc = "A normal trusty dagger.\n\n",
    name = "dagger",
    level_range = {1, 10},
--    cost = 5,
    cost = resolvers.value{silver=30},
    light = true,
    combat = {
        dam = {1,4},
        threat = 1,
    },
    wielder = {
        combat_parry = 4,
    },

}

newEntity{ base = "BASE_WEAPON",
    define_as = "BASE_SICKLE",
    type = "weapon", subtype = "sickle",
-- image = "tiles/object/sickle.png",
    display = "|", color=colors.SLATE,
    moddable_tile = resolvers.moddable_tile("sickle"),
    encumber = 2,
    rarity = 9,
    combat = { sound = "actions/melee", sound_miss = "actions/melee_miss", },
    name = "sickle",
    desc = "A normal sickle.\n\n",
    level_range = {1, 10},
    cost = 8,
    light = true,
    combat = {
        dam = {1,6},
        threat = 1,
    },
    wielder = {
        combat_parry = 3,
    },
}

newEntity{ base = "BASE_WEAPON",
    define_as = "BASE_SSPEAR",
    slot = "MAIN_HAND",
    type = "weapon", subtype="spear",
    image = "tiles/object/spear.png",
    display = "/", color=colors.BROWN,
    moddable_tile = resolvers.moddable_tile("spear"),
    encumber = 10,
    rarity = 5,
    combat = { sound = "actions/melee", sound_miss = "actions/melee_miss", },
    desc = "A wooden short spear.\n\n Damage 1d6.",
    name = "short spear",
    level_range = {1, 10},
--    cost = 1,
    cost = resolvers.value{silver=20},
    simple = true,
    combat = {
        dam = {1,6},
    },
    wielder = {
        combat_parry = 4,
    },
}

newEntity{ base = "BASE_WEAPON",
    define_as = "BASE_HMACE",
    slot = "MAIN_HAND", offslot = "OFF_HAND",
    type = "weapon", subtype="mace",
    image = "tiles/object/mace.png",
    display = "\\", color=colors.SLATE,
    moddable_tile = resolvers.moddable_tile("mace"),
    encumber = 8,
    rarity = 5,
    combat = { sound = "actions/melee", sound_miss = "actions/melee_miss", },
    desc = "A heavy metal mace.\n\n",
    name = "heavy mace",
    level_range = {1, 10},
--    cost = 12,
    cost = resolvers.value{silver=200},
    simple = true,
    combat = {
        dam = {1,8},
    },
     wielder = {
        combat_parry = 3,
    },
}

newEntity{ base = "BASE_WEAPON",
    define_as = "BASE_LMACE",
    slot = "MAIN_HAND", offslot = "OFF_HAND",
    type = "weapon", subtype="mace",
    image = "tiles/object/mace.png",
    display = "\\", color=colors.SLATE,
    moddable_tile = resolvers.moddable_tile("mace"),
    encumber = 4,
    rarity = 5,
    light = true,
    combat = { sound = "actions/melee", sound_miss = "actions/melee_miss", },
    desc = "A light metal mace.\n\n Damage 1d6.",
    name = "light mace",
    level_range = {1, 10},
--    cost = 5,
    cost = resolvers.value{silver=100},
    simple = true,
    combat = {
        dam = {1,6},
    },
    wielder = {
        combat_parry = 4,
    },
}

newEntity{ base = "BASE_WEAPON",
    define_as = "BASE_CLUB",
    slot = "MAIN_HAND", offslot = "OFF_HAND",
    type = "weapon", subtype="club",
    image = "tiles/object/club.png",
    display = "\\", color=colors.SLATE,
    moddable_tile = resolvers.moddable_tile("club"),
    encumber = 3,
    rarity = 3,
    simple = true,
    combat = { sound = "actions/melee", sound_miss = "actions/melee_miss", },
    desc = "A wooden club.\n\n",
    name = "club",
    level_range = {1, 10},
    cost = 5,
    combat = {
        dam = {1,6},
    },
    wielder = {
        combat_parry = 1,
    },
}

newEntity{ base = "BASE_WEAPON",
    define_as = "BASE_MSTAR",
    slot = "MAIN_HAND", offslot = "OFF_HAND",
    type = "weapon", subtype="morningstar",
    image = "tiles/newtiles/morningstar.png",
    display = "\\", color=colors.SLATE,
    moddable_tile = resolvers.moddable_tile("morningstar"),
    encumber = 6,
    rarity = 5,
    combat = { sound = "actions/melee", sound_miss = "actions/melee_miss", },
    desc = "A metal morningstar.\n\n",
    name = "morningstar",
    level_range = {1, 10},
--    cost = 8,
    cost = resolvers.value{silver=150},
    simple = true,
    combat = {
        dam = {1,8},
    },
}


newEntity{ base = "BASE_WEAPON_TWOHANDED",
    define_as = "BASE_STAFF",
    slot = "MAIN_HAND", slot_forbid = "OFF_HAND",
    type = "weapon", subtype="staff",
    image = "tiles/object/staff.png",
    display = "\\", color=colors.BROWN,
    moddable_tile = resolvers.moddable_tile("staff"),
    encumber = 4,
    rarity = 2,
    combat = { sound = "actions/melee", sound_miss = "actions/melee_miss", },
    desc = [[A long stout staff used as a weapon and wielded with one hand in the middle and the other between the middle and the end.]],
    name = "quarterstaff",
    level_range = {1, 10},
    cost = 6,
    simple = true,
    combat = {
        dam = {1,6},
    },
    wielder = {
        combat_parry = 8,
    },
}

--Martial weapons

newEntity{ base = "BASE_WEAPON",
    define_as = "BASE_LHAMMER",
    slot = "MAIN_HAND", offslot = "OFF_HAND",
    type = "weapon", subtype="hammer",
    image = "tiles/object/hammer.png",
    display = "\\", color=colors.SLATE,
    moddable_tile = resolvers.moddable_tile("hammer"),
    encumber = 4,
    rarity = 1,
    combat = { sound = "actions/melee", sound_miss = "actions/melee_miss", },
    desc = "A light metal hammer.\n\n",
    name = "light hammer",
    level_range = {1, 10},
--    cost = 1,
    cost = resolvers.value{silver=100},
    light = true,
    martial = true,
    combat = {
        dam = {1,4},
    },
}

newEntity{ base = "BASE_WEAPON",
    define_as = "BASE_HANDAXE",
    slot = "MAIN_HAND", offslot = "OFF_HAND",
    type = "weapon", subtype="handaxe",
    image = "tiles/object/handaxe.png",
    display = "\\", color=colors.SLATE,
    moddable_tile = resolvers.moddable_tile("handaxe"),
    encumber = 3,
    rarity = 3,
    light = true,
    martial = true,
    combat = { sound = "actions/melee", sound_miss = "actions/melee_miss", },
    desc = [[This short axe can be used as a melee weapon, but its primary purpose is throwing.]],
    name = "handaxe",
    level_range = {1, 10},
--    cost = 6,
    cost = resolvers.value{silver=25},
    combat = {
        dam = {1,6},
        critical = 3,
    },
    wielder = {
        combat_parry = 1,
    },
}

newEntity{ base = "BASE_WEAPON",
    define_as = "BASE_KUKRI",
    slot = "MAIN_HAND", offslot = "OFF_HAND",
    type = "weapon", subtype="kukri",
    image = "tiles/object/kukri.png",
    display = "|", color=colors.SLATE,
    moddable_tile = resolvers.moddable_tile("kukri"),
    encumber = 2,
    rarity = 5,
    light = true,
    martial = true,
    combat = { sound = "actions/melee", sound_miss = "actions/melee_miss", },
    desc = [[This weapon hails from exotic Northern lands, and features a blade that slants upward into a large, flat cutting surface. It is often used by assassins.]],
    name = "kukri",
    level_range = {1, 10},
 --   cost = 8,
    cost = resolvers.value{silver=125},
    combat = {
        dam = {1,4},
        threat = 2,
    },
    wielder = {
        combat_parry = 3,
    },
}

newEntity{ base = "BASE_WEAPON",
    define_as = "BASE_SHORTSWORD",
    slot = "MAIN_HAND", offslot = "OFF_HAND",
    type = "weapon", subtype="shortsword",
    require = { talent = { Talents.T_SHORT_SWORD_PROFICIENCY }, },
    image = "tiles/object/dagger.png",
    display = "|", color=colors.SLATE,
    moddable_tile = resolvers.moddable_tile("sword"),
    encumber = 2,
    rarity = 5,
    light = true,
    martial = true,
    combat = { sound = "actions/melee", sound_miss = "actions/melee_miss", },
    desc = "A curved short sword.\n\n",
    name = "short sword",
    level_range = {1, 10},
--    cost = 10,
    cost = resolvers.value{silver=100},
    combat = {
        dam = {1,6},
        threat = 1,
    },
    wielder = {
        combat_parry = 4,
    },
}

newEntity{ base = "BASE_WEAPON",
    define_as = "BASE_BATTLEAXE",
    slot = "MAIN_HAND", offslot = "OFF_HAND",
    type = "weapon", subtype="battleaxe",
    image = "tiles/object/battleaxe.png",
    display = "\\", color=colors.SLATE,
    moddable_tile = resolvers.moddable_tile("axe"),
    encumber = 12,
    rarity = 3,
    martial = true,
    combat = { sound = "actions/melee", sound_miss = "actions/melee_miss", },
    desc = "A normal battleaxe.\n\n Damage 1d6.",
    name = "battleaxe",
    level_range = {1, 10},
--    cost = 5,
    cost = resolvers.value{silver=100},
    combat = {
        dam = {1,6},
    },
}

newEntity{ base = "BASE_WEAPON",
    define_as = "BASE_SWORD",
    slot = "MAIN_HAND", offslot = "OFF_HAND",
    type = "weapon", subtype="sword",
    require = { talent = { Talents.T_LONG_SWORD_PROFICIENCY }, },
    image = "tiles/object/longsword.png",
    display = "|", color=colors.SLATE,
    moddable_tile = resolvers.moddable_tile("sword"),
    encumber = 4,
    rarity = 5,
    martial = true,
    combat = { sound = "actions/melee", sound_miss = "actions/melee_miss", },
    desc = "A trusty sword.\n\n",
    name = "long sword",
    level_range = {1, 10},
--    cost = 15,
    cost = resolvers.value{silver=175},
    combat = {
        dam = {1,8},
        threat = 2,
    },
    wielder = {
        combat_parry = 3,
    },
}

newEntity{ base = "BASE_WEAPON",
    define_as = "BASE_FLAIL",
    slot = "MAIN_HAND", offslot = "OFF_HAND",
    type = "weapon", subtype="flail",
    image = "tiles/object/flail.png",
    display = "/", color=colors.SLATE,
    moddable_tile = resolvers.moddable_tile("flail"),
    encumber = 5,
    rarity = 8,
    martial = true,
    combat = { sound = "actions/melee", sound_miss = "actions/melee_miss", },
    desc = "A metal flail.",
    name = "light flail",
    level_range = {1, 10},
--    cost = 8,
    resolvers.value{silver=175},
    combat = {
        dam = {1,8},
    },
    wielder = {
        combat_parry = 5,
    },
}

newEntity{ base = "BASE_WEAPON",
    define_as = "BASE_RAPIER",
    slot = "MAIN_HAND", offslot = "OFF_HAND",
    type = "weapon", subtype="rapier",
    require = { talent = { Talents.T_RAPIER_PROFICIENCY }, },
    image = "tiles/object/rapier.png",
    display = "|", color=colors.SLATE,
    moddable_tile = resolvers.moddable_tile("rapier"),
    encumber = 2,
    rarity = 6,
    martial = true,
    combat = { sound = "actions/melee", sound_miss = "actions/melee_miss", },
    desc = [[The weapon of choice for nobles, duelists and swashbucklers, the rapier is a newer sword with a thin, strong blade that focuses on piercing thrusts rather than slashing swings.]],
    name = "rapier",
    level_range = {1, 10},
--    cost = 20,
    cost = resolvers.value{silver=100},
    combat = {
        dam = {1,6},
        threat = 2,
    },
    wielder = {
        combat_parry = 6,
    },
}

newEntity{ base = "BASE_WEAPON",
    define_as = "BASE_SCIMITAR",
    slot = "MAIN_HAND", offslot = "OFF_HAND",
    type = "weapon", subtype="scimitar",
    image = "tiles/object/scimitar.png",
    display = "|", color=colors.SLATE,
    moddable_tile = resolvers.moddable_tile("scimitar"),
    encumber = 4,
    rarity = 7,
    martial = true,
    combat = { sound = "actions/melee", sound_miss = "actions/melee_miss", },

    desc = "A metal scimitar.\n\n",
    name = "scimitar",
    level_range = {1, 10},
--    cost = 15,
    cost = resolvers.value{platinum=1},
    combat = {
        dam = {1,6},
        threat = 2,
    },
    wielder = {
        combat_parry = 5,
    },
}

newEntity{ base = "BASE_WEAPON",
    define_as = "BASE_WARHAMMER",
    slot = "MAIN_HAND", offslot = "OFF_HAND",
    type = "weapon", subtype="hammer",
    image = "tiles/object/hammer.png",
    display = "\\", color=colors.SLATE,
    moddable_tile = resolvers.moddable_tile("hammer"),
    encumber = 5,
    rarity = 5,
    martial = true,
    combat = { sound = "actions/melee", sound_miss = "actions/melee_miss", },
    desc = [[The warhammer is a blunt weapon designed specifically to punch through plate armors. Its blows carry terrible force with them.]],
    name = "warhammer",
    level_range = {1, 10},
--    cost = 12,
    cost = resolvers.value{silver=150},
    combat = {
        dam = {1,8},
        critical = 3,
    },
    wielder = {
        combat_parry = 3,
    },
}

--Two-handed weapons
newEntity{ base = "BASE_WEAPON_TWOHANDED",
    define_as = "BASE_FALCHION",
    slot = "MAIN_HAND",
    slot_forbid = "OFF_HAND",
    type = "weapon", subtype="falchion",
    image = "tiles/object/greatsword.png",
    display = "|", color=colors.SLATE,
    moddable_tile = resolvers.moddable_tile("greatsword"),
    encumber = 8,
    rarity = 10,
    martial = true,
    combat = { sound = "actions/melee", sound_miss = "actions/melee_miss", },
    desc = "A metal falchion.\n\n",
    name = "falchion",
    level_range = {1, 10},
--    cost = 75,
    cost = resolvers.value{platinum=1},
    combat = {
        dam = {2,4},
        threat = 2,
    },
    wielder = {
        combat_parry = 3,
    },
}


newEntity{ base = "BASE_WEAPON_TWOHANDED",
    define_as = "BASE_GREATAXE",
    slot = "MAIN_HAND",
    slot_forbid = "OFF_HAND",
    type = "weapon", subtype="axe",
    image = "tiles/object/greataxe.png",
    display = "\\", color=colors.SLATE,
    moddable_tile = resolvers.moddable_tile("greataxe"),
    encumber = 12,
    rarity = 10,
    martial = true,
    combat = { sound = "actions/melee", sound_miss = "actions/melee_miss", },
    desc = "A great metal axe.\n\n",
    name = "greataxe",
    level_range = {1, 10},
--    cost = 20,
    cost = resolvers.value{silver=125},
    combat = {
        dam = {1,12},
        critical = 3,
    },
    wielder = {
        combat_parry = 2,
    },
}

--"Large club" in Incursion
newEntity{ base = "BASE_WEAPON_TWOHANDED",
    define_as = "BASE_GREATCLUB",
    slot = "MAIN_HAND",
    slot_forbid = "OFF_HAND",
    type = "weapon", subtype="club",
    image = "tiles/object/club.png",
    display = "\\", color=colors.SLATE,
    moddable_tile = resolvers.moddable_tile("greatclub"),
    encumber = 8,
    rarity = 5,
    martial = true,
    combat = { sound = "actions/melee", sound_miss = "actions/melee_miss", },
    desc = "A huge wooden club.\n\n",
    name = "greatclub",
    level_range = {1, 10},
--    cost = 5,
    cost = resolvers.value{silver=50},
    combat = {
        dam = {1,10},
    },
    wielder = {
        combat_parry = 2,
    },
}

newEntity{ base = "BASE_WEAPON_TWOHANDED",
    define_as = "BASE_HEAVYFLAIL",
    slot = "MAIN_HAND",
    slot_forbid = "OFF_HAND",
    type = "weapon", subtype="flail",
    image = "tiles/object/flail.png",
    display = "/", color=colors.SLATE,
    moddable_tile = resolvers.moddable_tile("flail"),
    encumber = 10,
    rarity = 10,
    martial = true,
    combat = { sound = "actions/melee", sound_miss = "actions/melee_miss", },
    desc = "A heavy flail.\n\n",
    name = "heavy flail",
    level_range = {1, 10},
--    cost = 15,
    cost = resolvers.value{silver=250},
    combat = {
        dam = {1,10},
        threat = 1,
    },
    wielder = {
        combat_parry = 5,
    },
}

newEntity{ base = "BASE_WEAPON_TWOHANDED",
    define_as = "BASE_GREATSWORD",
    slot = "MAIN_HAND",
    slot_forbid = "OFF_HAND",
    type = "weapon", subtype="sword",
    image = "tiles/object/greatsword.png",
    display = "|", color=colors.SLATE,
    moddable_tile = resolvers.moddable_tile("greatsword"),
    encumber = 8,
    rarity = 10,
    martial = true,
    combat = { sound = "actions/melee", sound_miss = "actions/melee_miss", },
    desc = "A metal great two-handed sword.\n\n",
    name = "greatsword",
    level_range = {1, 10},
--    cost = 50,
    cost = resolvers.value{silver=475},
    combat = {
        dam = {2,6},
        threat = 1,
    },
    wielder = {
        combat_parry = 2,
    },
}

newEntity{ base = "BASE_WEAPON_TWOHANDED",
    define_as = "BASE_HALBERD",
    slot = "MAIN_HAND",
    slot_forbid = "OFF_HAND",
    type = "weapon", subtype="halberd",
    image = "tiles/object/halberd.png",
    display = "/", color=colors.SLATE,
    moddable_tile = resolvers.moddable_tile("halberd"),
    encumber = 12,
    rarity = 10,
    martial = true,
    combat = { sound = "actions/melee", sound_miss = "actions/melee_miss", },
    desc = [[The shortest and heaviest common polearm, a halberd is a very effective weapon for a lone fighter, and many specialized styles of combat have developed around it. The halberd has a heavy axe-pike head capable of delivering blows with great force.]],
    name = "halberd",
    level_range = {1, 10},
--    cost = 10,
    cost = resolvers.value{silver=250},
    combat = {
        dam = {1,10},
        critical = 3,
    },
    wielder = {
        combat_parry = 4,
    },
}

newEntity{ base = "BASE_WEAPON_TWOHANDED",
    define_as = "BASE_SCYTHE",
    slot = "MAIN_HAND",
    slot_forbid = "OFF_HAND",
    type = "weapon", subtype="scythe",
    image = "tiles/object/scythe.png",
    display = "\\", color=colors.SLATE,
    moddable_tile = resolvers.moddable_tile("scythe"),
    encumber = 10,
    rarity = 12,
    martial = true,
    combat = { sound = "actions/melee", sound_miss = "actions/melee_miss", },
    desc = [[Originally an agricultural implement, the scythe can also be a terrifying instrument of war. It is difficult to use effectively, but devastating in skilled hands. Druids, and those who kill in their service, often favor this weapon.]],
    name = "scythe",
    level_range = {1, 10},
--    cost = 18,
    cost = resolvers.value{silver=50},
    combat = {
        dam = {2,4},
        critical = 4,
    },
    wielder = {
        combat_parry = 4,
    },
}
