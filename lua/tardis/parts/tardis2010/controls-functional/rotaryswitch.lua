local PART = {}

PART.ID = "tardis2010_rotaryswitch"
PART.Name = "2010 TARDIS Rotary Switch"
PART.Model = "models/doctorwho1200/copper/rotaryswitch.mdl"
PART.AutoSetup = true

PART.Collision = true
PART.ShouldTakeDamage = true

PART.Animate = true
PART.AnimateSpeed = 1.7
PART.Sound = "doctorwho1200/copper/rotaryswitch.wav"

PART.PowerOffSound = true
PART.PowerOffUse = true

TARDIS:AddPart(PART)