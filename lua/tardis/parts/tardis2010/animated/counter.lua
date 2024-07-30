local PART = {}

PART.ID = "tardis2010_counter"
PART.Name = "2010 TARDIS Counter"
PART.Model = "models/doctorwho1200/copper/counter.mdl"
PART.AutoSetup = true

if CLIENT then
	function PART:Initialize()
		self.counter = {}
		self.counter.pos = 0
	end
	function PART:Think()
		if not self:GetData("tardis2010_animations") then return end

		local power = self:GetData("power-state")
		local teleport = self:GetData("teleport", false)
		local flight = self:GetData("flight", false)

		if power and (teleport or flight) then
			if self.counter.pos == 1 then
				self.counter.pos = 0
			end
			self.counter.pos = math.Approach(self.counter.pos, 1, FrameTime()*0.03)
			self:SetPoseParameter("counter", self.counter.pos)
		end
	end
end

TARDIS:AddPart(PART)