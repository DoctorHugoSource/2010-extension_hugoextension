local PART = {}

PART.ID = "tardis2010_enginerelease"
PART.Name = "2010 TARDIS Engine Release lever"
PART.Model = "models/doctorwho1200/copper/enginereleaselever.mdl"
PART.AutoSetup = true

PART.Collision = true
PART.ShouldTakeDamage = true

PART.Animate = true
PART.AnimateSpeed = 1.5
PART.Sound = "doctorwho1200/copper/enginereleaselever.wav"
PART.PowerOffSound = true
PART.PowerOffUse = true

TARDIS:AddPart(PART)