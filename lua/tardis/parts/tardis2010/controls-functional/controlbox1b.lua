local PART = {}

PART.ID = "tardis2010_controlbox1b"
PART.Name = "2010 TARDIS Control Box 1b"
PART.Model = "models/doctorwho1200/copper/controlboxblack.mdl"
PART.AutoSetup = true

PART.Collision = true
PART.ShouldTakeDamage = true

PART.Animate = true
PART.AnimateSpeed = 4
PART.Sound = "vtalanov98/tardis2010/lever1.wav"

PART.PowerOffSound = true
PART.PowerOffUse = true

TARDIS:AddPart(PART)