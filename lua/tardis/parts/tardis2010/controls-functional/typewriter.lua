local PART = {}

PART.ID = "tardis2010_typewriter"
PART.Name = "2010 TARDIS Typewriter"
PART.Model = "models/doctorwho1200/copper/typewriter.mdl"
PART.AutoSetup = true

PART.Collision = true
PART.ShouldTakeDamage = true

PART.Sound = "vtalanov98/tardis2010/typewriter.wav"
PART.PowerOffSound = false
PART.PowerOffUse = true

if SERVER then

	if GetConVar("hugoextension_tardis2_UsePartTimers"):GetBool() then  -- only add timer logic if enabled

		function PART:Use(ply)
			self.interior:Timer("", 0.5, function()
				TARDIS:Control(self.Control, ply)
			end)
		end

	end

end

TARDIS:AddPart(PART)