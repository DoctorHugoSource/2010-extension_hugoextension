local PART = {}

PART.ID = "tardis2010_doorframe"
PART.Name = "2010 TARDIS Door Frame"
PART.Model = "models/doctorwho1200/copper/doorframe.mdl"
PART.AutoSetup = true

PART.Collision = true
PART.ShouldTakeDamage = true

function PART:Initialize()  -- set correct sign variant skin on spawn

local initskin = self.exterior:GetSkin()

self:SetSkin(initskin)

end





TARDIS:AddPart(PART)