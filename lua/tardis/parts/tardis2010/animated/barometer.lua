local PART = {}

PART.ID = "tardis2010_barometer"
PART.Name = "2010 TARDIS Barometer"
PART.Model = "models/doctorwho1200/copper/barometer.mdl"
PART.AutoSetup = true

if CLIENT then
	function PART:Initialize()
		self.barometer = {}
		self.barometer.pos = 0
	end

	function PART:Think()
		if not self:GetData("tardis2010_animations") then return end

		local power = self:GetData("power-state")

		if power then
			if self.barometer.pos == 1 then
				self.barometer.pos = 0
			end
		end
		self.barometer.pos = math.Approach(self.barometer.pos, 1, FrameTime()*2.5)
		self:SetPoseParameter("barometer", self.barometer.pos)
	end
end

TARDIS:AddPart(PART)