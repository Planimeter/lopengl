--=========== Copyright © 2016, Planimeter, All rights reserved. =============--
--
-- Purpose:
--
--============================================================================--

local ffi = require( "ffi" )
io.input( "gl3.h" )
ffi.cdef( io.read( "*all" ) )

local name = "opengl32"
if ( jit.os == "OSX" ) then
	name = "OpenGL.framework/OpenGL"
else
	name = "GL"
end

return ffi.load( name )
