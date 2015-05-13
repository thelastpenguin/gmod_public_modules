solution "gmsv_fps"

	language "C++"
	location ( os.get() .."-".. _ACTION )
	flags { "Symbols", "NoEditAndContinue", "NoPCH", "StaticRuntime", "EnableSSE" }
	targetdir ( "lib/" .. os.get() .. "/" )
	
	includedirs { 
		"../../_include/", 
		"../../_source-sdk-2013/mp/src/public/",
		"../../_source-sdk-2013/mp/src/public/tier0",
		"../../_source-sdk-2013/mp/src/public/tier1"
	}
	
	libdirs {
		'../../_source-sdk-2013/mp/src/lib/public'
	}

	links {
		'tier0',
		'tier1',
		'tier2'
	}

	configurations
	{ 
		"Release"
	}
	
	configuration "Release"
		defines { "NDEBUG" }
		flags{ "Optimize", "FloatFast" }
	
	project "gmsv_fps"
		defines { "GMMODULE" }
		files { "src/**.*", "../../_include/**.*"}
		kind "SharedLib"
		