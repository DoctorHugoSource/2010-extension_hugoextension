local PART = {}

PART.ID = "tardis2010_regulators"
PART.Name = "2010 TARDIS Regulators"
PART.Model = "models/doctorwho1200/copper/regulators.mdl"
PART.AutoSetup = true

PART.Collision = true
PART.ShouldTakeDamage = true

PART.Animate = true
PART.AnimateSpeed = 1
PART.Sound = "doctorwho1200/copper/regulators.wav"

PART.PowerOffSound = true
PART.PowerOffUse = true

TARDIS:AddPart(PART)