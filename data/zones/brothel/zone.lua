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

return {
	name = "Brothel",
	level_range = {1, 1},
	max_level = 1,
--	decay = {300, 800},
	width = 30, height = 30,
	persistent = "zone",
	generator =  {
		map = {
			class = "engine.generator.map.Building",
			max_block_w = 15, max_block_h = 15,
			max_building_w = 5, max_building_h = 5,

			floor = "FLOOR_TILED",
			external_floor = "FLOOR",
			wall = "WALL",
			up = "UP",
			down = "DOWN",
			door = "DOOR",

			nb_rooms = false,
			rooms = false,
		},
		actor = {
			class = "mod.class.generator.actor.OnSpots",
			nb_npc = {10, 20},
			nb_spots = 2, on_spot_chance = 75,
		},
		object = {
            class = "mod.class.generator.object.Random",
            nb_object = {5, 10},
        },
	},
	levels =
	{
	--Place exit to town on level 1
		[1] = {
		generator = { map = {
		up = "EXIT_TOWN",
		},},
	},
	--No shaft up on level 2
		[2] = {
		generator = { map = {
		up = "UP",
		},},
	},

	},
	on_turn = function(self)
	--game.log("Brothel's on_turn")
	local player = game.player
	--do nothing if not actor turn
	if game.turn % 10 ~= 0 then return end
	
	--if no date, do nothing
	if not player.kid_date then return end

	if game.turn >= player.kid_date then
		game.log("Time to spawn kid")
		--spawn kid
		local x, y = util.findFreeGrid(player.x, player.y, 1, true, {[engine.Map.ACTOR]=true})
		local kid = game.kid
		if game.kid then
			--game.log("[Brothel] We have a kid")
			game.zone:addEntity(game.level, kid, "actor", x, y)
		    player:addKid(kid)
		end
	    --set date to nil
	    player.kid_date = nil
    end


	end,
	post_process = function(level)
		-- Put lore near the up stairs
		game:placeRandomLoreObject("NOTE"..level.level)

		game:placeTerrainMulti("FAERIE_TORCH", 10)

		game:placeTerrainOnSpots("BED", 6)

--		game:placeTerrain("FAERIE_TORCH")

	end,
}
