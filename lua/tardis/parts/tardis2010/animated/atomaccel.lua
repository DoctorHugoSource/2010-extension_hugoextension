local PART = {}

PART.ID = "tardis2010_atomaccel"
PART.Name = "2010 TARDIS Atom Accelerator"
PART.Model = "models/doctorwho1200/copper/atomaccelerator.mdl"
PART.AutoSetup = true

if CLIENT then
	function PART:Initialize()
		self.atomaccel = {}
		self.atomaccel.pos = 0
		self.atomaccel.mode = 1
	end
	function PART:Think()
		if not self:GetData("tardis2010_animations") then return end

		local power = self:GetData("power-state")
		local teleport = self:GetData("teleport", false)
		local flight = self:GetData("flight", false)
		if power and (teleport or flight) then
			if self.atomaccel.pos == 1 then
				self.atomaccel.pos = 0
			end
			self.atomaccel.pos = math.Approach(self.atomaccel.pos, self.atomaccel.mode, FrameTime()*0.75)
			self:SetPoseParameter("atomaccelerator", self.atomaccel.pos)
		end
	end
end

TARDIS:AddPart(PART)