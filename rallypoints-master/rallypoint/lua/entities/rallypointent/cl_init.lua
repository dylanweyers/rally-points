include('shared.lua')
 
-- Draw some 3D text
local function Draw3DText( pos, ang, scale, text, flipView )
	if ( flipView ) then
		ang:RotateAroundAxis( Vector( 0, 0, 1 ), 180 )
	end

	cam.Start3D2D( pos, ang, scale )
		draw.DrawText( text, "DermaLarge", 0, 0, Color( 35,255,160, 255 ), TEXT_ALIGN_CENTER )
	cam.End3D2D()
end


function ENT:Draw()
    self:DrawModel()
 
	local text = self:GetRallyName()

	local mins, maxs = self:GetModelBounds()
	local pos = self:GetPos() + Vector( 0, 0, maxs.z + 10 )

	local ang = Angle( 0, SysTime() * 100 % 360, 90 )

	Draw3DText( pos, ang, 0.2, text, false )
	Draw3DText( pos, ang, 0.2, text, true )
end

