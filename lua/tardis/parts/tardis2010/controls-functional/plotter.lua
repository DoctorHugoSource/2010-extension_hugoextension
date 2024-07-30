local PART = {}

PART.ID = "tardis2010_plotter"
PART.Name = "2010 TARDIS Zig Zag Plotter"
PART.Model = "models/doctorwho1200/copper/plotter.mdl"
PART.AutoSetup = true

PART.Collision = true
PART.ShouldTakeDamage = true

PART.Animate = true
PART.AnimateSpeed = 0.65
PART.Sound = "doctorwho1200/copper/plotter.wav"

PART.PowerOffSound = true
PART.PowerOffUse = true

TARDIS:AddPart(PART)