-- Veins of the Earth
-- Zireael 2014-2015
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

--Worldmap tiles

newEntity{
	define_as = "DOWN",
	type = "floor", subtype = "floor",
	name = "dungeon entrance",
	image = "tiles/new/worldmap_stairs_down.png",
	display = '>', color_r=255, color_g=0, color_b=255, back_color=colors.DARK_GREY,
	notice = true,
	always_remember = true,
--	change_level=1,
}

newEntity{
	base = "DOWN",
	define_as = "DOWN_START",
	spot = "small_tunnels",
	change_zone = "small tunnels",
	change_level = 1,
}

newEntity{
	base = "DOWN",
	define_as = "DOWN_TUNNELS",
	spot = "tunnels",
	change_zone = "tunnels",
	change_level = 1,
}


newEntity{
	base = "DOWN",
	define_as = "DOWN_CAVERN",
	spot = "cavern",
	change_zone = "cavern",
	change_level = 1,
}

newEntity{
	base = "DOWN",
	define_as = "DOWN_COMPOUND",
	change_zone = "compound",
	spot = "compound",
	change_level = 1,
}

newEntity{
	base = "DOWN",
	define_as = "DOWN_LABIRYNTH",
	change_zone = "labirynth",
	spot = "labirynth",
	change_level = 1,
}

newEntity{
	base = "DOWN",
	define_as = "DOWN_GROVE",
	display = '>', color=colors.GREEN, back_color=colors.DARK_GREY,
	image = "tiles/terrain/dungeon tree.png",
	spot = "grove",
	change_zone = "cave grove",
	change_level = 1,
}

newEntity{
	base = "DOWN",
	define_as = "DOWN_FOREST",
	display = '>', color=colors.CHOCOLATE, back_color=colors.DARK_GREY,
	image = "tiles/UT/fungi.png",
	spot = "forest",
	change_zone = "fungi forest",
	change_level = 1,
}

newEntity{
	base = "DOWN",
	define_as = "DOWN_MAZE",
	display = '>', color=colors.CHOCOLATE, back_color=colors.DARK_GREY,
	image = "tiles/UT/fungi.png",
	spot = "fungi_maze",
	change_zone = "fungi maze",
	change_level = 1,
}

newEntity{
	base = "DOWN",
	define_as = "DOWN_ARENA",
	image = "tiles/terrain/gate-closed.png",
	change_zone = "arena",
	spot = "arena",
	change_level = 1,
}

newEntity{
	base = "DOWN",
	define_as = "DOWN_RUINS",
	image = "tiles/terrain/worldmap_ruins.png",
	change_zone = "town",
	spot = "town",
	change_level = 1,
}

newEntity{
	base = "DOWN",
	define_as = "DOWN_DROWCITY",
	display = '>', color=colors.VIOLET, back_color=colors.DARK_GREY,
	image = "tiles/new/town.png",
	change_zone = "drow city",
	spot = "drow_city",
	change_level = 1,
}

newEntity{
	base = "DOWN_DROWCITY",
	define_as = "DOWN_DROWOUTPOST",
	change_zone = "drow outpost",
	spot = "drow_outpost",
	change_level = 1,
}

newEntity{
	base = "DOWN_DROWCITY",
	define_as = "DOWN_DROWMETROPOLIS",
	change_zone = "drow metropolis",
	spot = "drow_metropolis",
	change_level = 1,
}

newEntity{
	base = "DOWN",
	define_as = "DOWN_TOWER",
	display = '>', color=colors.VIOLET, back_color=colors.SLATE,
	image = "tiles/new/worldmap_warded.png",
	spot = "tower",
	change_zone = "wizard tower",
	change_level = 1,
}

newEntity{
	base = "DOWN",
	define_as = "DOWN_ELVEN",
	display = '>', color=colors.LIGHT_GREEN, back_color=colors.SLATE,
	image = "tiles/new/worldmap_elven.png",
	spot = "elven",
	change_zone = "elven outpost",
	change_level = 1,
}

--Other grids
newEntity{
	define_as = "FLOOR",
	type = "floor", subtype = "floor",
	name = "floor", image = "tiles/UT/worldmap_floor.png",
	display = ' ', color_r=255, color_g=255, color_b=255, back_color=colors.DARK_GREY,
}

newEntity{
	define_as = "WALL",
	type = "wall", subtype = "wall",
	name = "wall", image = "tiles/terrain/worldmap_wall.png",
	display = '#', color=colors.BLACK, back_color={r=30, g=30, b=60},
	always_remember = true,
	does_block_move = true,
	can_pass = {pass_wall=1},
	block_sight = true,
}
