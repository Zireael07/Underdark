newTalentType{ type="special/special", name = "special", description = "Special" }

newTalent{
	name = "Show Spellbook", image = "talents/spellbook.png",
	type = {"special/special",1},
	mode = "activated",
	points = 1,
	cooldown = 0,
	range = 0,
	action = function(self, t)
		local book = require("mod.dialogs.SpellBook").new(self)
		game:registerDialog(book)
		return nil
	end,
	info = function(self, t )
		return "Shows your spellbook"
	end,
}

--Combat-related stuff	

newTalent{     
    name = "Shoot", image = "talents/shoot.png",
    type = {"special/special", 1},
    mode = 'activated',
    --require = ,
    points = 1,
    cooldown = 0,
    tactical = { ATTACK = 1 },
    requires_target = true,
    on_pre_use = function (self, t, silent)
        local weapon = self:getInven("MAIN_HAND")[1]
        local ammo = self:getInven("QUIVER")[1]

        if not (weapon and weapon.combat and weapon.combat.range) then 
            if not silent then game.log(("You need a ranged weapon to shoot")) end return nil end
        if not weapon or not weapon.ranged then 
            if not silent then game.log("You need a ranged weapon to shoot with!") end return nil end
        if weapon.ammo_type and not ammo then 
            if not silent then game.log("Your weapon requires ammo!") end return nil end
        if not weapon.ammo_type == ammo.archery_ammo then 
            if not silent then game.log("You have the wrong ammo type equipped!") end return nil end
        if ammo.combat.capacity <= 0 then 
            if not silent then game.log("You're out of ammo!") end return nil end

        return true
    end,
    target = function(self, t) return  {type="bolt", range=self:getInven("MAIN_HAND")[1].combat.range, talent=t} end,
    archery_hit = function(tx, ty, tg, self, tmp) --This is called when the projectile hits
        local DamageType = require "engine.DamageType"
        local damtype = DamageType.PHYSICAL
     
        local target = game.level.map(tx, ty, Map.ACTOR)
        local weapon = self:getInven("MAIN_HAND")[1]
        local ammo = self:getInven("QUIVER")[1]

        if target then
            --do we hit?
            local hit, crit = self:attackRoll(target)
            if hit then
                local damage = rng.dice(weapon.combat.dam[1],  weapon.combat.dam[2])
                if crit then damage = damage * 1.5 end --TODO: make it use crit damage
                
                DamageType:get(damtype).projector(self, target.x, target.y, damtype, math.max(0, damage), tmp)
            end
        end
    end,
    action = function(self, t)
            local tg = self:getTalentTarget(t)
           
            local x, y = self:getTarget(tg)
            if not x or not y then return nil end

            self:projectile(tg, x, y, t.archery_hit)

            return true
    end,
    info = function(self, t)
            return ([[You shoot at the target.]])
    end,
}

newTalent{
    name = "Polearm", image = "talents/trident.png",
    type = {"special/special", 1},
    mode = 'activated',
    --require = ,
    points = 1,
    cooldown = 0,
    tactical = { ATTACK = 1 },
    range = 3,
    requires_target = true,
    target = function(self, t)
    local tg = {type="hit", range=self:getTalentRange(t), talent=t}
        return tg
    end,
    on_pre_use = function(self, t, silent)
        local weapon = self:getInven("MAIN_HAND")[1]

        if weapon and weapon.reach then
            return true
        else
            if not silent then
                game.log("You need a reach weapon, such as a polearm, to use this")
            end
            return false
        end
    end,
    action = function(self, t)
        
        local weapon = self:getInven("MAIN_HAND")[1]

        local tg = self:getTalentTarget(t)
        local x, y = self:getTarget(tg)
        if not x or not y then return nil end
        if not self:canProject(tg, x, y) then return nil end

        local target = game.level.map(x, y, Map.ACTOR)

        if target then
            self:attackTarget(target, true)
        end
        return true
    end,
    info = function(self, t)
        return ([[You attack the target with a reach weapon.]])
    end,
}
