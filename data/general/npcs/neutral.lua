--Veins of the Earth
--Zireael 2013-2016

local Talents = require("engine.interface.ActorTalents")

newEntity{
    define_as = "BASE_NPC_NEUTRAL",
    type = "humanoid",
    body = { INVEN = 10, MAIN_HAND = 1, OFF_HAND = 1, BODY = 1, HELM = 1, QUIVER = 1 },
    body_parts = { torso=1, arms=1, legs=1, head=1 },
    ai = "humanoid_level", ai_state = { talent_in=1, ai_move="move_astar", },
    combat = { dam= {1,6} },
    faction = "neutral",
    open_door = true,
    show_portrait = true,
    emote_anger = "I shall kill you!",
    resolvers.talents{ [Talents.T_SHOOT]=1,
    --give the simple weapon proficiency warrior/fighter/wizard class all have
    [Talents.T_SIMPLE_WEAPON_PROFICIENCY]=1,
    },
    resolvers.wounds()
}

--Bases
newEntity{ define_as = "BASE_NPC_DROW_NEUTRAL",
    base = "BASE_NPC_NEUTRAL",
    name = "neutral drow",
    subtype = "drow",
    display = 'h', color=colors.BLACK,
    image = "tiles/mobiles/npc/drow_fighter.png",
    level_range = {1, nil}, exp_worth = 400,
    max_life = resolvers.rngavg(3,5),
    stats = { str=13, dex=13, con=10, int=12, wis=9, cha=10, luc=10 },
    hit_die = 1,
    challenge = 1,
    desc = [[A dark silhouette.]],
    specialist_desc = [[Drow do not sleep or dream, and are immune to sleep effects. Instead, they refresh themselves by entering a meditative reverie for a few hours a night. Drow are resistant to magic, but once per day they can use spell-like abilities to create dancing lights, darkness, and faerie fire, which they use to disorient their foes.]],
    uncommon_desc = [[A drow’s sharp senses are attuned to life underground. Drow can see so well in the dark that sudden exposure to bright light can blind them.]],
    common_desc = [[Drow are known for their evil natures, matriarchal cultures, and zealous worship of malign, arachnid gods. They are more delicate than humans, but also more dextrous and more cunning. Drow are talented spellcasters, with drow women holding all divine roles. Culturally, drow train their children with the rapier, short sword, and hand crossbow, and they often poison their weapons.]],
    base_desc = [[This lithe, ebon-skinned humanoid is a dark elf, also known as a drow. These subterranean elves speak both Elven and Undercommon, and typically also speak Common. Some drow also learn other racial languages or a form of sign language known only to them.]],

    infravision = 6,
    alignment = "Chaotic Evil",
    languages = {"Undercommon", "Drow"},
    skill_hide = 1,
    skill_movesilently = 1,
    skill_listen = 2,
    skill_search = 3,
    skill_spot = 2,
    resolvers.equip{
        full_id=true,
        { name = "chain shirt", not_properties={"cursed"}, veins_drops="npc", add_levels=2, veins_level=resolvers.npc_drops_level,  },
        { name = "light metal shield", not_properties={"cursed"}, veins_drops="npc", add_levels=2, veins_level=resolvers.npc_drops_level },
        { name = "rapier", not_properties={"cursed"}, veins_drops="npc", add_levels=2, veins_level=resolvers.npc_drops_level,  },
        { name = "bolts", not_properties={"cursed"}, veins_drops="npc", veins_level=1  },
    },
    resolvers.inventory {
    full_id=true,
    { name = "hand crossbow", },
    { name = "spider bread" },
    },
    emote_anger = "Oloth plynn d'jal!",
}

newEntity{ define_as = "BASE_NPC_HUMAN_NEUTRAL",
    base = "BASE_NPC_NEUTRAL",
    name = "neutral human",
    display = 'h', color=colors.WHITE,
    image = "tiles/new/human_fighter.png",
    subtype = "human",
    level_range = {1, 5}, exp_worth = 400,
    max_life = resolvers.rngavg(5,8),
    stats = { str=11, dex=11, con=12, int=11, wis=9, cha=9, luc=10 },
--    lite = 3,
    hit_die = 1,
    languages = {"Common"},
    alignment = "Neutral Good",
    challenge = 1,
    resolvers.equip{
        full_id=true,
        { name = "chainmail", not_properties={"cursed"}, veins_drops={"npc"}, add_levels=2, veins_level=resolvers.npc_drops_level  },
        { name = "light metal shield", not_properties={"cursed"}, veins_drops={"npc"}, add_levels=2, veins_level=resolvers.npc_drops_level  },
        { name = "longsword", not_properties={"cursed"}, veins_drops={"npc"}, add_levels=2, veins_level=resolvers.npc_drops_level  },
        { name = "arrows", not_properties={"cursed"}, veins_drops={"npc"}, add_levels=2, veins_level=resolvers.npc_drops_level  },
        { name = "torch" },
    },
    resolvers.inventory {
    full_id=true,
    { name = "shortbow",  },
    { name = "food ration" },
    },
    emote_anger = "I will kill you!",
}

newEntity{ define_as = "BASE_NPC_DWARF_NEUTRAL",
    base = "BASE_NPC_NEUTRAL",
    name = "neutral dwarf",
    display = 'h', color=colors.SANDY_BROWN,
    subtype = "dwarf",
    image = "tiles/mobiles/npc/dwarf_fighter.png",
    desc = [[A lost dwarf.]],
    stats = { str=13, dex=11, con=14, int=10, wis=9, cha=6, luc=10 },

    level_range = {1, 15}, exp_worth = 400,
    max_life = resolvers.rngavg(5,10),
    hit_die = 1,
    challenge = 1,
    infravision = 3,
    alignment = "Lawful Good",
    languages = {"Common", "Dwarven"},
    resolvers.talents{ [Talents.T_SHOOT]=1,
    [Talents.T_EXOTIC_WEAPON_PROFICIENCY]=1, --stopgap measure for now
    },
    resolvers.equip{
        full_id=true,
        { name = "scale mail", not_properties={"cursed"}, veins_drops={"npc"}, add_levels=2, veins_level=2 },
        { name = "heavy metal shield", not_properties={"cursed"}, veins_drops={"npc"}, add_levels=2, veins_level=2 },
        { name = "dwarven waraxe", not_properties={"cursed"}, veins_drops={"npc"}, add_levels=2, veins_level=2 },
        { name = "arrows", veins_drops={"npc"}, veins_level=1, },
    },
    resolvers.inventory {
    full_id=true,
    { name = "shortbow", },
    { name = "food ration" },
    },
    uncommon_desc = [[Dwarves come off as gruff or even rude, but they are an extremely determined and honorable people. They look down upon those who flaunt their wealth and usually wear only one or two pieces of finery themselves, although dwarven jewelry tends to be exceedingly beautiful and well-crafted.]],
    common_desc = [[Dwarves build their kingdoms underground, carving them straight into the stone of mountainsides. They are naturally adept at working stone, and spend their days mining gems and precious metals from beneath the earth.]],
    base_desc = [[This short, stocky humanoid is a dwarf. It can see in the dark.]],
    emote_anger = "I will kill you!",
}

newEntity{ define_as = "BASE_NPC_ELF_NEUTRAL",
    base = "BASE_NPC_NEUTRAL",
    name = "neutral elf",
    display = 'h', color=colors.LIGHT_GREEN,
    image = "tiles/new/elf_fighter.png",
    subtype = "elf",
    level_range = {1, 5}, exp_worth = 400,
    max_life = resolvers.rngavg(5,8),
    stats = { str=11, dex=13, con=10, int=10, wis=9, cha=9, luc=10 },

    hit_die = 1,
    languages = {"Common", "Elven"},
    alignment = "Chaotic Good",
    challenge = 1,
    low_light_vision = 2,
    skill_listen = 2,
    skill_search = 3,
    skill_spot = 2,
    desc = [[A shady silhouette.]],
    specialist_desc = [[Elves do not sleep or dream, and are immune to sleep effects. Instead, they refresh themselves by entering a meditative reverie for a few hours a night. Numerous elven subraces exist, with the high elf being most common. Elves can also interbreed with humans, producing half-elves.]],
    uncommon_desc = [[An elf has sharp senses, heightened by their attunement to the natural world. Elves see well in dim light and can often sense hidden doors just by passing near them.]],
    common_desc = [[Elves live in harmony with nature and are talented arcanists. Compared to humans, they are dextrous but relatively frail. Culturally, elves receive extensive training with the sword and bow as they mature.]],
    base_desc = [[This willowy humanoid is an elf, a civilized race of nonhumans renowned for their artistry and extreme longevity. They speak both Elven and Common. Some elves also learn other racial languages.]],

    resolvers.equip{
        full_id=true,
        { name = "chainmail", not_properties={"cursed"}, veins_drops={"npc"}, add_levels=2, veins_level=resolvers.npc_drops_level  },
        { name = "light metal shield", not_properties={"cursed"}, veins_drops={"npc"}, add_levels=2, veins_level=resolvers.npc_drops_level  },
        { name = "longsword", not_properties={"cursed"}, veins_drops={"npc"}, add_levels=2, veins_level=resolvers.npc_drops_level  },
        { name = "arrows", not_properties={"cursed"}, veins_drops={"npc"}, add_levels=2, veins_level=resolvers.npc_drops_level  },
        { name = "torch" },
    },
    resolvers.inventory {
    full_id=true,
    { name = "longbow",  },
    { name = "food ration" },
    },
    emote_anger = "Maeve take you!",
}

--Shopkeepers
newEntity{ define_as = "BASE_NPC_DROW_SHOP",
    base = "BASE_NPC_DROW_NEUTRAL",
    name = "drow shopkeeper",
    image = "tiles/new/drow_shop.png",
    rarity = 3,
    can_talk = "shop",
    resolvers.talents{ [Talents.T_MARTIAL_WEAPON_PROFICIENCY]=1 },
    resolvers.store("GENERAL"),
}

newEntity{ define_as = "BASE_NPC_HUMAN_SHOP",
    base = "BASE_NPC_HUMAN_NEUTRAL",
    name = "human shopkeeper",
    image = "tiles/new/human_shop.png",
    rarity = 5,
    can_talk = "shop",
    resolvers.talents{ [Talents.T_MARTIAL_WEAPON_PROFICIENCY]=1 },
    resolvers.store("GENERAL"),
}

newEntity{
    define_as = "BASE_NPC_DWARF_SHOP",
    base = "BASE_NPC_DWARF_NEUTRAL",
    name = "dwarf shopkeeper",
    rarity = 5,
    can_talk = "shop",
    resolvers.talents{ [Talents.T_MARTIAL_WEAPON_PROFICIENCY]=1 },
    resolvers.store("GENERAL"),
}

--Sages (assume they are wizards - do not have martial weapon proficiency)
newEntity{
    define_as = "BASE_NPC_DROW_SAGE",
    base = "BASE_NPC_DROW_NEUTRAL",
    name = "drow sage",
    image = "tiles/mobiles/npc/drow_mage.png",
    rarity = 5,
    can_talk = "sage",
    resolvers.classes{wizard=3},
}

newEntity{
    define_as = "BASE_NPC_HUMAN_SAGE",
    base = "BASE_NPC_HUMAN_NEUTRAL",
    name = "human sage",
    image = "tiles/new/human_mage.png",
    rarity = 5,
    can_talk = "sage",
    resolvers.classes{wizard=2},
}

newEntity{
    define_as = "BASE_NPC_ELF_SAGE",
    base = "BASE_NPC_ELF_NEUTRAL",
    name = "elf sage",
    image = "tiles/new/elf_mage.png",
    rarity = 15,
    can_talk = "sage",
    resolvers.classes{wizard=2},
}

--Healers
newEntity{
    base = "BASE_NPC_HUMAN_NEUTRAL",
    name = "human healer",
    rarity = 5,
    can_talk = "healer",
    resolvers.talents{ [Talents.T_MARTIAL_WEAPON_PROFICIENCY]=1 },
    resolvers.classes{cleric=2}
}

newEntity{
    base = "BASE_NPC_DROW_NEUTRAL",
    name = "drow healer",
    image = "tiles/mobiles/npc/drow_priest.png",
    rarity = 10,
    can_talk = "healer",
    resolvers.talents{ [Talents.T_MARTIAL_WEAPON_PROFICIENCY]=1  },
    resolvers.classes{cleric=3}
}

newEntity{
    base = "BASE_NPC_ELF_NEUTRAL",
    name = "elf healer",
    image = "tiles/new/elf_priest.png",
    rarity = 15,
    can_talk = "healer",
    resolvers.talents{ [Talents.T_MARTIAL_WEAPON_PROFICIENCY]=1  },
    resolvers.classes{cleric=3}
}

newEntity{
    base = "BASE_NPC_DWARF_NEUTRAL",
    name = "dwarf healer",
    rarity = 5,
    can_talk = "healer",
    resolvers.talents{ [Talents.T_MARTIAL_WEAPON_PROFICIENCY]=1  },
    resolvers.classes{cleric=4}
}

--Mercenaries
newEntity{
    base = "BASE_NPC_HUMAN_NEUTRAL",
    display = "@", color=colors.HONEYDEW,
    image = "tiles/new/human_fighter.png",
    name = "human hireling",
    resolvers.talents{ [Talents.T_MARTIAL_WEAPON_PROFICIENCY]=1  },
    max_life = resolvers.rngavg(15,18),
    can_talk = "hireling",
}

newEntity{
    base = "BASE_NPC_DROW_NEUTRAL",
    display = "@", color=colors.BLACK,
    image = "tiles/mobiles/npc/drow_fighter.png",
    name = "drow hireling",
    resolvers.talents{ [Talents.T_MARTIAL_WEAPON_PROFICIENCY]=1  },
    max_life = resolvers.rngavg(15,18),
    can_talk = "hireling",
}

newEntity{
    base = "BASE_NPC_DWARF_NEUTRAL",
    display = "@", color=colors.SANDY_BROWN,
    image = "tiles/mobiles/npc/dwarf_fighter.png",
    name = "dwarf hireling",
    resolvers.talents{ [Talents.T_MARTIAL_WEAPON_PROFICIENCY]=1  },
    max_life = resolvers.rngavg(15,18),
    can_talk = "hireling",
}

newEntity{
    base = "BASE_NPC_ELF_NEUTRAL",
    display = "@", color=colors.LIGHT_GREEN,
    image = "tiles/new/elf_fighter.png",
    name = "elf hireling",
    resolvers.talents{ [Talents.T_MARTIAL_WEAPON_PROFICIENCY]=1  },
    max_life = resolvers.rngavg(15,18),
    can_talk = "hireling",
}
