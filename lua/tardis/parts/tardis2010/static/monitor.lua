local PART = {}

PART.ID = "tardis2010_monitor"
PART.Name = "2010 TARDIS Monitor"
PART.Model = "models/doctorwho1200/copper/monitor.mdl"
PART.AutoSetup = true

PART.Collision = true
PART.ShouldTakeDamage = true

TARDIS:AddPart(PART)

local PART={}
PART.ID = "tardis2010_screen_switch_hitbox"
PART.Name = "2010 TARDIS hitbox"
PART.Model = "models/hunter/plates/plate.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = false
PART.Sound = "doctorwho1200/copper/switch2.wav"

function PART:Initialize()
	self:SetColor(Color(255,255,255,0))
	self:SetCollisionGroup(COLLISION_GROUP_WORLD)
end

TARDIS:AddPart(PART)