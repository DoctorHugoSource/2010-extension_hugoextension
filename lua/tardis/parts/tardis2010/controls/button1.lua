local PART = {}

PART.ID = "tardis2010_button1"
PART.Name = "2010 TARDIS Button 1"
PART.Model = "models/doctorwho1200/copper/button.mdl"
PART.AutoSetup = true

PART.Collision = true
PART.ShouldTakeDamage = true

PART.PowerOffSound = false
PART.PowerOffUse = false
PART.Sound = "doctorwho1200/copper/button.wav"

function PART:Initialize()
	self:SetSubMaterial("1", "models/doctorwho1200/copper/redlamp")
end

function PART:Use(ply)
	local power = self:GetData("power-state")
	local texture = "redlamp"

	if power and self:GetOn() then
		texture = "redlampon"
	end
	self:SetSubMaterial("1", "models/doctorwho1200/copper/" .. texture)

	if SERVER then
		if power then
		TARDIS:Control(self.Control, ply, self)
		end
	end
end

TARDIS:AddPart(PART)