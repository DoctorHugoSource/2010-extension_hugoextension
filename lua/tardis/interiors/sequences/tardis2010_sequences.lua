--2010 TARDIS interior - Control sequences (advanced mode)

local Seq = {
	ID = "tardis2010_sequences",

	["tardis2010_button2"] = {
		Controls = {
			"tardis2010_wibblylever",
			"tardis2010_controlbox1b",
			"tardis2010_controlbox2b",
			"tardis2010_timespaceforwardback",
			"tardis2010_throttle",
		},
		OnFinish = function(self, ply, step, part)
			if IsValid(self) and IsValid(self) then
				self.exterior:Demat()
			end
		end,
		OnFail = function(self, ply, step, part)
			-- fail stuff
		end,
		Condition = function(self)
			return self:GetData("vortex",false)==false and self:GetData("teleport",false)==false
		end,
	},

	["tardis2010_typewriter"] = {
		Controls = {
			"tardis2010_wibblylever",
			"tardis2010_controlbox1b",
			"tardis2010_controlbox2b",
			"tardis2010_timespaceforwardback",
			"tardis2010_throttle",
		},
		OnFinish = function(self, ply, step, part)
			if IsValid(self) and IsValid(self) then
				self.exterior:Demat()
			end
		end,
		OnFail = function(self, ply, step, part)
			-- fail stuff
		end,
		Condition = function(self)
			return self:GetData("vortex",false)==false and self:GetData("teleport",false)==false
		end,
	},

	["tardis2010_keyboard"] = {
		Controls = {
			"tardis2010_wibblylever",
			"tardis2010_controlbox1b",
			"tardis2010_controlbox2b",
			"tardis2010_timespaceforwardback",
			"tardis2010_throttle",
		},
		OnFinish = function(self, ply, step, part)
			if IsValid(self) and IsValid(self) then
				self.exterior:Demat()
			end
		end,
		OnFail = function(self, ply, step, part)
			-- fail stuff
		end,
		Condition = function(self)
			return self:GetData("vortex",false)==false and self:GetData("teleport",false)==false
		end,
	}
}

TARDIS:AddControlSequence(Seq)