local PART ={ }

PART.ID = "tardis2010_pbm2"
PART.Name = "2010 TARDIS Pinball Machine 2"
PART.Model = "models/doctorwho1200/copper/pinballmachine2.mdl"
PART.AutoSetup = true

PART.Collision = true
PART.ShouldTakeDamage = true

PART.Animate = true
PART.AnimateSpeed = 2.7

PART.Sound = "doctorwho1200/copper/pinballmachine.wav"
PART.PowerOffSound = true
PART.PowerOffUse = true

TARDIS:AddPart(PART)