local sonic_exists_2010 = file.Exists("models/doctorwho1200/sonics/11thdoctor/3rdpersonsonic.mdl", "GAME")

local PART={}
PART.ID = "tardis2010_sonic_charger"
PART.Name = PART.ID
PART.Model = "models/hunter/plates/plate.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.SoundOn = "poogie13/tardis2010/sonic_charger_on.wav"
PART.SoundOff = "poogie13/tardis2010/sonic_charger_off.wav"
PART.PowerOffUse = false

function PART:Initialize()
	self:SetColor(Color(0,0,0,0))
end

if SERVER then
	function PART:Use(ply)
		local sonic = self.interior:GetPart("tardis2010_sonic")

		if not IsValid(sonic) or not sonic_exists_2010 then
			TARDIS:Control(self.Control, ply)
			return
		end

		if self:GetData("sonic_generating", false) then return end
		if not self.exterior:GetPower() then return end

		if self:GetOn() then
			TARDIS:Control(self.Control, ply)
			sonic:SetCollide(false, true)
			sonic:SetColor(Color(0,0,0,0))
			return
		end

		sonic:SetMaterial("models/props_combine/portalball001_sheet")
		sonic:SetColor(Color(255,255,255,10))
		sonic:SetCollide(false, true)

		self:SetData("sonic_generating", true)

		self.interior:Timer("tardis2010_sonic_charger_step2", 1.0, function()
			sonic:SetColor(Color(255,255,255,100))
		end)

		self.interior:Timer("tardis2010_sonic_charger_step3", 1.5, function()
			sonic:SetColor(Color(255,255,255,175))
		end)

		self.interior:Timer("tardis2010_sonic_charger", 2, function()
			sonic:SetMaterial(nil)
			sonic:SetColor(Color(255,255,255,255))
			sonic:SetCollide(true, true)
			self:SetData("sonic_generating", false)
		end)
	end
end

TARDIS:AddPart(PART)

if sonic_exists_2010 then

	local PART={}
	PART.ID = "tardis2010_sonic"
	PART.Name = PART.ID
	PART.Model = "models/doctorwho1200/sonics/11thdoctor/3rdpersonsonic.mdl"
	PART.AutoSetup = true
	PART.Collision = true
	PART.Sound = "poogie13/tardis2010/sonic_charger_off.wav"
	PART.ShouldTakeDamage = false

	if SERVER then
		function PART:Initialize()
			self:SetCollide(false, true)
			self:SetColor(Color(0,0,0,0))
		end

		function PART:Use(ply)
			local charger = self.interior:GetPart("tardis2010_sonic_charger")
			if not IsValid(charger) then return end
			if self:GetData("sonic_generating", false) then return end

			charger:SetOn(false)

			self:SetColor(Color(0,0,0,0))

			self:SetCollide(false, true)

			TARDIS:Control(self.Control, ply)
		end
	end

	TARDIS:AddPart(PART)
end