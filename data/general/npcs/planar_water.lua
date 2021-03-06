--Veins of the Earth
--Zireael 2016

local Talents = require("engine.interface.ActorTalents")

newEntity{
    define_as = "BASE_NPC_WATER",
    type = "outsider", subtype = "water",
    body = { INVEN = 10, MAIN_HAND = 1, OFF_HAND = 1, BODY = 1, HELM = 1, QUIVER=1 },
    body_parts = { torso=1, arms=1, legs=1, head=1 },
    ai = "human_level", ai_state = { talent_in=3, },
    alignment = "Neutral",
    blood_color = colors.BLUE,
    resolvers.wounds()
}

--Improved grab, ink cloud, no flanking bonuses for enemies;
--Blind-Fight feat
newEntity{ base = "BASE_NPC_WATER",
    define_as = "BASE_NPC_TOJANIDA",
    image = "tiles/mobiles/tojanida.png",
    display = 'O', color=colors.LIGHT_BLUE,
    body = { INVEN = 10 },
    desc = [[A creature with seven stalks extending from the shell.]],

    stats = { str=14, dex=13, con=15, int=10, wis=12, cha=9, luc=10 },
    combat = { dam= {2,6} },
    rarity = 15,
    infravision = 4,
    skill_diplomacy = 1,
    skill_hide = 10,
    skill_knowledge = 6,
    skill_swim = 8,
    resolvers.talents{ [Talents.T_MOBILITY]=1,
    [Talents.T_ACID_IMMUNITY]=1,
    [Talents.T_COLD_IMMUNITY]=1,
    },
    resists = {
        [DamageType.FIRE] = 10,
        [DamageType.ELECTRIC] = 10,
    },
}

--Bump them all up a'la Inc
newEntity{
    base = "BASE_NPC_TOJANIDA",
    name = "juvenile tojanida",
    level_range = {5, 15}, exp_worth = 900,
    max_life = resolvers.rngavg(15,20),
    hit_die = 4,
    challenge = 3,
    combat_natural = 10,
    skill_escapeartist = 6,
    skill_listen = 6,
    skill_search = 6,
    skill_sensemotive = 6,
    skill_spot = 8,
}

newEntity{
    base = "BASE_NPC_TOJANIDA",
    name = "adult tojanida",
    level_range = {5, 15}, exp_worth = 1500,
    max_life = resolvers.rngavg(40,45),
    hit_die = 7,
    challenge = 8,
    stats = { str=16, dex=13, con=15, int=10, wis=12, cha=9, luc=10 },
    combat = { dam= {2,8} },
    combat_natural = 12,
    skill_escapeartist = 10,
    skill_listen = 10,
    skill_search = 14,
    skill_sensemotive = 10,
    skill_spot = 14,
--  resolvers.talents{ [Talents.T_POWER_ATTACK]=1 },
}

--Cleave, Imp Sunder
newEntity{
    base = "BASE_NPC_TOJANIDA",
    name = "elder tojanida",
    level_range = {10, nil}, exp_worth = 2700,
    max_life = resolvers.rngavg(125,130),
    hit_die = 7,
    challenge = 10,
    stats = { str=22, dex=13, con=19, int=10, wis=12, cha=9, luc=10 },
    combat = { dam= {4,6} },
    combat_natural = 13,
    skill_escapeartist = 18,
    skill_hide = 14,
    skill_knowledge = 18,
    skill_listen = 20,
    skill_search = 21,
    skill_sensemotive = 16,
    skill_spot = 24,
    resolvers.talents{ [Talents.T_ALERTNESS]=1,
--  [Talents.T_POWER_ATTACK]=1
    },
}