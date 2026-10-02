project "EnTT"
	kind "StaticLib"
	language "C++"
    cppdialect "C++20"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"src/**.hpp",
		"src/**.cpp",
		
		"single_include/**.hpp"
	}

	includedirs
	{
		"single_include"
	}

	filter "system:windows"
		systemversion "latest"
		staticruntime "off"

	filter "system:linux"
		pic "On"
		systemversion "latest"
		staticruntime "off"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

    filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        symbols "off"
