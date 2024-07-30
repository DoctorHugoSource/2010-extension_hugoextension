local PART = {}
PART.ID = "tardis2010_bluevalves"
PART.Name = "2010 TARDIS Blue Valves"
PART.Model = "models/doctorwho1200/copper/bluevalves.mdl"
PART.AutoSetup = true

PART.Collision = true
PART.ShouldTakeDamage = true

PART.Animate = true
PART.AnimateSpeed = 0.8
PART.Sound = ""

if SERVER then

local on

	function PART:Use(activator)

        if on then
            self:EmitSound("doctorwho1200/copper/bluevalvesoff.wav", 75, 100, 1)
        else
            self:EmitSound("doctorwho1200/copper/bluevalves.wav", 75, 100, 1)
        end

        on = not on


        if self.exterior:GetPower() then
        TARDIS:Control(self.Control, activator, self)
        end


    end

end

TARDIS:AddPart(PART)