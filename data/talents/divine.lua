newTalentType{ all_limited=true, type="divine/divine", name="divine", description="Divine Spells" }

newTalent{
	name = "Cure Light Wounds",
	type = {"divine/divine", 1},
	mode = 'activated',
	--require = ,
	level = 1,
	points = 1,
	tactical = { BUFF = 2 },
	range = 0,
	--caster_bonus = function(self)
	--	return math.min(self.level or 1, 5)
	--end,
	action = function(self)
	if not self then return nil end
	d = rng.dice(1,8)
	self:heal(d) --+ caster_bonus)
	game.log(("%s heals %d damage"):format(self.name:capitalize(), d))
	return true
	--end,
	end,

	info = function(self, t)
		return ([[You heal yourself - the amount of damage healed is equal to 1d8 + 1 per caster level (max 5).]])
	end,	
}

newTalent{
	name = "Cure Moderate Wounds",
	type = {"divine/divine", 1},
	mode = 'activated',
	--require = ,
	level = 2,
	points = 1,
	tactical = { BUFF = 2 },
	range = 0,
	--caster_bonus = function(self)
	--	return math.min(self.level or 1, 5)
	--end,
	action = function(self)
	if not self then return nil end
	d = rng.dice(2,8)
	self:heal(d) --+ caster_bonus)
	game.log(("%s heals %d damage"):format(self.name:capitalize(), d))
	return true
	--end,
	end,

	info = function(self, t)
		return ([[You heal yourself - the amount of damage healed is equal to 2d8 + 1 per caster level (max 5).]])
	end,	
}

newTalent{
	name = "Cure Serious Wounds",
	type = {"divine/divine", 1},
	mode = 'activated',
	--require = ,
	level = 3,
	points = 1,
	tactical = { BUFF = 2 },
	range = 0,
	--caster_bonus = function(self)
	--	return math.min(self.level or 1, 5)
	--end,
	action = function(self)
	if not self then return nil end
	d = rng.dice(3,8)
	self:heal(d) --+ caster_bonus)
	game.log(("%s heals %d damage"):format(self.name:capitalize(), d))
	return true
	--end,
	end,

	info = function(self, t)
		return ([[You heal yourself - the amount of damage healed is equal to 3d8 + 1 per caster level (max 5).]])
	end,	
}

newTalent{
	name = "Cure Critical Wounds",
	type = {"divine/divine", 1},
	mode = 'activated',
	--require = ,
	level = 4,
	points = 1,
	tactical = { BUFF = 2 },
	range = 0,
	--caster_bonus = function(self)
	--	return math.min(self.level or 1, 5)
	--end,
	action = function(self)
	if not self then return nil end
	d = rng.dice(4,8)
	self:heal(d) --+ caster_bonus)
	game.log(("%s heals %d damage"):format(self.name:capitalize(), d))
	return true
	--end,
	end,

	info = function(self, t)
		return ([[You heal yourself - the amount of damage healed is equal to 4d8 + 1 per caster level (max 5).]])
	end,	
}

newTalent{
	name = "Heal Light Wounds",
	type = {"divine/divine", 1},
	mode = 'activated',
	level = 4,
	points = 1,
	tactical = { BUFF = 2 },
	range = 0,
	action = function(self)
	if not self then return nil end
	d = (self.max_life/10)*1
	self:heal(d)
	game.log(("%s heals %d damage"):format(self.name:capitalize(), d))
	return true
	end,

	info = function(self, t)
		return ([[You heal yourself - the amount of damage healed is equal to 10% of your max health.]])
	end,	
}

newTalent{
	name = "Heal Moderate Wounds",
	type = {"divine/divine", 1},
	mode = 'activated',
	level = 5,
	points = 1,
	tactical = { BUFF = 2 },
	range = 0,
	action = function(self)
	if not self then return nil end
	d = (self.max_life/10)*3
	self:heal(d)
	game.log(("%s heals %d damage"):format(self.name:capitalize(), d))
	return true
	end,

	info = function(self, t)
		return ([[You heal yourself - the amount of damage healed is equal to 30% of your max health.]])
	end,	
}

newTalent{
	name = "Heal Serious Wounds",
	type = {"divine/divine", 1},
	mode = 'activated',
	level = 6,
	points = 1,
	tactical = { BUFF = 2 },
	range = 0,
	action = function(self)
	if not self then return nil end
	d = (self.max_life/10)*5
	self:heal(d)
	game.log(("%s heals %d damage"):format(self.name:capitalize(), d))
	return true
	end,

	info = function(self, t)
		return ([[You heal yourself - the amount of damage healed is equal to 50% of your max health.]])
	end,	
}

newTalent{
	name = "Heal Critical Wounds",
	type = {"divine/divine", 1},
	mode = 'activated',
	level = 7,
	points = 1,
	tactical = { BUFF = 2 },
	range = 0,
	action = function(self)
	if not self then return nil end
	d = (self.max_life/10)*7
	self:heal(d)
	game.log(("%s heals %d damage"):format(self.name:capitalize(), d))
	return true
	end,

	info = function(self, t)
		return ([[You heal yourself - the amount of damage healed is equal to 70% of your max health.]])
	end,	
}