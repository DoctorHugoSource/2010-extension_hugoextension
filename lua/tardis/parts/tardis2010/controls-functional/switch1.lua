local PART = {}

PART.ID = "tardis2010_switch1"
PART.Name = "2010 TARDIS Switch 1"
PART.Model = "models/doctorwho1200/copper/switch.mdl"
PART.AutoSetup = true

PART.Collision = true
PART.ShouldTakeDamage = true

PART.Animate = true
PART.AnimateSpeed = 3.5
PART.Sound = "doctorwho1200/copper/switch.wav"

PART.PowerOffSound = true
PART.PowerOffUse = true

TARDIS:AddPart(PART)