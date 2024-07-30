local PART = {}

PART.ID = "tardis2010_recorder"
PART.Name = "2010 TARDIS Recorder"
PART.Model = "models/doctorwho1200/copper/recorder.mdl"
PART.AutoSetup = true

if CLIENT then
	function PART:Initialize()
		self.recorder = {}
		self.recorder.pos = 0
	end
	function PART:Think()
		if not self:GetData("tardis2010_animations") then return end

		local power = self:GetData("power-state")

		if power then
			if self.recorder.pos == 1 then
				self.recorder.pos = 0
			end
			self.recorder.pos = math.Approach(self.recorder.pos, 1, FrameTime()*1.3)
			self:SetPoseParameter("recorder", self.recorder.pos)
		end
	end
end

TARDIS:AddPart(PART)