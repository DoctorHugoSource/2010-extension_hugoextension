local PART = {}

PART.ID = "tardis2010_dipstick2"
PART.Name = "2010 TARDIS Dipstick 2"
PART.Model = "models/doctorwho1200/copper/dipstick2.mdl"
PART.AutoSetup = true

PART.Collision = true
PART.ShouldTakeDamage = true

PART.Animate = true
PART.AnimateSpeed = 3.5
PART.SoundOn = "vtalanov98/tardis2010/dipstick_on.wav"
PART.SoundOff = "vtalanov98/tardis2010/dipstick_off.wav"

TARDIS:AddPart(PART)