local PART = {}

PART.ID = "tardis2010_movingpart"
PART.Name = "2010 TARDIS Moving Part"
PART.Model = "models/doctorwho1200/copper/movingpart.mdl"
PART.AutoSetup = true

if CLIENT then
	function PART:Initialize()
		self.movingpart = {}
		self.movingpart.pos = 0
	end
	function PART:Think()
		if not self:GetData("tardis2010_animations") then return end

		local power = self:GetData("power-state")

		if power then
			if self.movingpart.pos == 1 then
				self.movingpart.pos = 0
			end
			self.movingpart.pos = math.Approach(self.movingpart.pos, 1, FrameTime()*0.1)
			self:SetPoseParameter("movingpart", self.movingpart.pos)
		end
	end
end

TARDIS:AddPart(PART)