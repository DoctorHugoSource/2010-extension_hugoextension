local PART = {}

PART.ID = "tardis2010_meters"
PART.Name = "2010 TARDIS Meters"
PART.Model = "models/doctorwho1200/copper/meters.mdl"
PART.AutoSetup = true

if CLIENT then
	function PART:Initialize()
		self.meters = {}
		self.meters.pos = 0
	end

	function PART:Think()
		if not self:GetData("tardis2010_animations") then return end

		local power = self:GetData("power-state")

		if power then
			if self.meters.pos == 1 then
				self.meters.pos = 0
			end
		end
		self.meters.pos = math.Approach(self.meters.pos, 1, FrameTime()*1)
		self:SetPoseParameter("meters", self.meters.pos)
	end
end

TARDIS:AddPart(PART)