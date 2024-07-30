local PART = {}

PART.ID = "tardis2010_timecolumn"
PART.Name = "2010 TARDIS Time Column"
PART.Model = "models/doctorwho1200/copper/rotor.mdl"
PART.AutoSetup = true
PART.UseTransparencyFix = true

PART.Collision = true
PART.ShouldTakeDamage = true

if CLIENT then
	function PART:Initialize()
		self.timerotor = {}
		self.timerotor.pos = 0
	end
	function PART:Think()
		local teleport = self:GetData("teleport", false)
		local flight = self:GetData("flight", false)
		if self.timerotor.pos > 0 or teleport or flight then
			if self.timerotor.pos == 0 then
				self.timerotor.pos = 1
			elseif self.timerotor.pos == 1 and (teleport or flight) then
				self.timerotor.pos = 0
			end
			self.timerotor.pos = math.Approach(self.timerotor.pos, 1, FrameTime()*0.45)
			self:SetPoseParameter("rotor", self.timerotor.pos)
		end
	end
end

TARDIS:AddPart(PART)