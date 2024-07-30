local PART = {}

PART.ID = "tardis2010_controlbox1a"
PART.Name = "2010 TARDIS Control Box 1a"
PART.Model = "models/doctorwho1200/copper/controlbox.mdl"
PART.AutoSetup = true

PART.Collision = true
PART.ShouldTakeDamage = true

PART.Animate = true
PART.AnimateSpeed = 4.5
PART.SoundOn = "vtalanov98/tardis2010/controlbox_on.wav"
PART.SoundOff = "vtalanov98/tardis2010/controlbox_off.wav"

PART.PowerOffSound = true
PART.PowerOffUse = true

TARDIS:AddPart(PART)