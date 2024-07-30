local PART = {}

PART.ID = "tardis2010_clock"
PART.Name = "2010 TARDIS Clock"
PART.Model = "models/doctorwho1200/copper/clock.mdl"
PART.AutoSetup = true

if CLIENT then
	function PART:Initialize()
		self.clock = {}
		self.clock.pos = 0
	end
	function PART:Think()
		if not self:GetData("tardis2010_animations") then return end

		local power = self:GetData("power-state")
		local teleport = self:GetData("teleport", false)
		local flight = self:GetData("flight", false)

		if power and (teleport or flight) then
			if self.clock.pos == 1 then
				self.clock.pos = 0
			end
			self.clock.pos = math.Approach(self.clock.pos, 1, FrameTime()*0.25)
			self:SetPoseParameter("clock", self.clock.pos)
		end
	end
end

TARDIS:AddPart(PART)