TARDIS:AddControl({
	id = "tardis2010_animations",
	tip_text = nil,
	serveronly=true,
	power_independent = false,
	screen_button = { virt_console = false, mmenu = false, },

	int_func=function(self,ply)
		self:SetData("tardis2010_animations", not self:GetData("tardis2010_animations"), true)
	end,
})

local sonic_exists_2010 = file.Exists("models/doctorwho1200/sonics/11thdoctor/3rdpersonsonic.mdl", "GAME")

if SERVER then
	util.AddNetworkString("TARDIS-2010-Sonic")
end


if sonic_exists_2010 then
	TARDIS:AddControl({
		id = "tardis2010_sonic_dispenser",
		int_func=function(self,ply)
			if TARDIS:IsSonicInstalled() then
				local interior_sonic_id = "11thdoctorsonic"

				if IsValid(ply:GetWeapon("swep_sonicsd")) then
					TARDIS:Message(ply, "Controls.SonicDispenser.Equipped")
				else
					ply:Give("swep_sonicsd")
					TARDIS:Message(ply, "Controls.SonicDispenser.Dispensed")
				end
				net.Start("TARDIS-2010-Sonic")
					net.WriteString(interior_sonic_id)
				net.Send(ply)
			else
				TARDIS:ErrorMessage(ply, "Controls.SonicDispenser.MissingAddon")
			end
		end,
		power_independent = true,
		bypass_isomorphic = true,
		serveronly = true,
		screen_button = false,
		tip_text = "Controls.SonicDispenser.Tip",
	})

	if CLIENT then
		net.Receive("TARDIS-2010-Sonic", function()
			local interior_sonic_id = net.ReadString()
			RunConsoleCommand("sonic_model", interior_sonic_id)
			RunConsoleCommand("sonicsd_give", interior_sonic_id)
		end)
	end
end