local PART = {}

PART.ID = "tardis2010_corridordoors15_portal"
PART.Name = "2010 TARDIS Corridor Doors 15"
PART.Model = "models/doctorwho1200/copper/intdoors15.mdl"
PART.AutoSetup = true
PART.BypassIsomorphic = true

PART.Collision = true
PART.ShouldTakeDamage = true

PART.Animate = true
PART.AnimateSpeed = 0.9

if SERVER then
	local function PlaySounds(self)
		sound.Play("doctorwho1200/copper/intdoors.wav", self:LocalToWorld(Vector(628, -542, -43)))
		sound.Play("doctorwho1200/copper/intdoors.wav", self:LocalToWorld(Vector(463, 742, 145)))
	end

	function PART:Use(ply)
		self:SetCollide(self:GetOn())
		PlaySounds(self)

		if not self:GetOn() then
			self.interior:Timer(self.ID, 5, function(int)
				self:SetOn(false)
				self:SetCollide(true)
				PlaySounds(self)
			end)
		else
			self.interior:CancelTimer(self.ID)
		end
	end

	
end

TARDIS:AddPart(PART)