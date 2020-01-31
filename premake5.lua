project "rttr"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "on"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-Intermediate/" .. outputdir .. "/%{prj.name}")

    files
    {
        "src/rttr/**.h",
        "src/rttr/**.cpp",
    }
    
	includedirs
	{
		"src"
	}

    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
		runtime "Debug"
        symbols "on"

	filter "configurations:Release"
		runtime "Release"
        optimize "on"
