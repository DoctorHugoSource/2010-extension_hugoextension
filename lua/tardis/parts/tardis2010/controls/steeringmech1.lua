local PART = {}

PART.ID = "tardis2010_steeringmech1"
PART.Name = "2010 TARDIS Steering Mechanism 1"
PART.Model = "models/doctorwho1200/copper/steeringmechanism.mdl"
PART.AutoSetup = true

PART.Collision = true
PART.ShouldTakeDamage = true

PART.Animate = true
PART.AnimateSpeed = 5
PART.Sound = "doctorwho1200/copper/switch.wav"

TARDIS:AddPart(PART)