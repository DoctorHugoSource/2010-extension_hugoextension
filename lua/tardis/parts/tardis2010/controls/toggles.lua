local PART = {}

PART.ID = "tardis2010_toggles"
PART.Name = "2010 TARDIS Toggles"
PART.Model = "models/doctorwho1200/copper/toggles.mdl"
PART.AutoSetup = true

PART.Collision = true
PART.ShouldTakeDamage = true

PART.Animate = true
PART.AnimateSpeed = 1.1
PART.Sound = "vtalanov98/tardis2010/toggles.wav"

if SERVER then

local firsttime = 0
local index

	function PART:Use(activator)

		if firsttime == 0 then             -- apparently i have to do it like this because i cant fucking get 'self.exterior' outside of this function
			index = self.exterior:GetSkin()
		end

		index = index + 1  -- cycle ext skins

		if index >= 4 then
			index = 0
		end

		firsttime = 1

		self.exterior:SetSkin(index)
		TARDIS:Message(activator, "Exterior appearance reconfigured to #".. tostring(index))

 	end
end

TARDIS:AddPart(PART)
