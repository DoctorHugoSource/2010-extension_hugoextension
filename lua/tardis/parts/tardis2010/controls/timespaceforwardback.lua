local PART = {}

PART.ID = "tardis2010_timespaceforwardback"
PART.Name = "2010 TARDIS Time and Space Forward/Back Control"
PART.Model = "models/doctorwho1200/copper/tsfbcontrol.mdl"
PART.AutoSetup = true

PART.Collision = true
PART.ShouldTakeDamage = true

PART.Animate = true
PART.AnimateSpeed = 3.5
PART.SoundOn = "doctorwho1200/copper/tsfbcontrolon.wav"
PART.SoundOff = "doctorwho1200/copper/tsfbcontroloff.wav"

TARDIS:AddPart(PART)