local PART = {}

PART.ID = "tardis2010_handbrake"
PART.Name = "2010 TARDIS Handbrake"
PART.Model = "models/doctorwho1200/copper/handbrake.mdl"
PART.AutoSetup = true

PART.Collision = true
PART.ShouldTakeDamage = true

PART.Animate = true
PART.AnimateSpeed = 4
PART.SoundOn = "doctorwho1200/copper/handbrakeon.wav"
PART.SoundOff = "doctorwho1200/copper/handbrakeoff.wav"
PART.PowerOffSound = true
PART.PowerOffUse = true

TARDIS:AddPart(PART)
