local PART = {}

PART.ID = "tardis2010_throttle"
PART.Name = "2010 TARDIS Throttle"
PART.Model = "models/doctorwho1200/copper/throttle.mdl"
PART.AutoSetup = true

PART.Collision = true
PART.ShouldTakeDamage = true

PART.Animate = true
PART.AnimateSpeed = 2
PART.Sound = "doctorwho1200/copper/throttle.wav"

if SERVER then
	function PART:Use(ply)
		local power = self:GetData("power-state")
		local teleport = self:GetData("teleport", false)
		local vortex = self:GetData("vortex", false)
		local prefix = "models/doctorwho1200/copper/"
		local t

		if power and not self:GetOn() then
			t = "throttlelightson"
		else
			t = "throttlelightsoff"
		end

		self.interior:ChangeTexture("tardis2010_throttlelights", t, nil, prefix)

		if SERVER and (teleport or vortex) or not self.interior:GetSequencesEnabled() then
			TARDIS:Control(self.Control, ply, self)
		end
	end
end

TARDIS:AddPart(PART)