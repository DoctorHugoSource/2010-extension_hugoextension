local PART = {}

PART.ID = "tardis2010_gyrostab"
PART.Name = "2010 TARDIS Gyroscopic Stabilizer"
PART.Model = "models/doctorwho1200/copper/gyroscopicstabilizer.mdl"
PART.AutoSetup = true

if CLIENT then
	function PART:Initialize()
		self.gyrostab = {}
		self.gyrostab.pos = 0
	end
	function PART:Think()
		if not self:GetData("tardis2010_animations") then return end

		local power = self:GetData("power-state")

		if power then
			if self.gyrostab.pos == 1 then
				self.gyrostab.pos = 0
			end
			self.gyrostab.pos = math.Approach(self.gyrostab.pos, 1, FrameTime()*0.15)
			self:SetPoseParameter("gyroscopicstabilizer", self.gyrostab.pos)
		end
	end
end

TARDIS:AddPart(PART)