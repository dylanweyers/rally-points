ENT.Type = "anim"
ENT.Base = "base_gmodentity"
 
ENT.PrintName		= "Rally point"
ENT.Author			= "Dyl"
ENT.Contact			= ""
ENT.Purpose			= ""
ENT.Instructions	= ""

function ENT:SetupDataTables()
	self:NetworkVar("String", 0, "RallyName")
	if SERVER then
		if not self:GetRallyName() or self:GetRallyName() == "" then
			self:SetRallyName("Rally Point")
		end
	end
end