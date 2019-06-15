workspace "yage"
    architecture "x64"
	startproject "editor"

    configurations
    {
        "Debug",
        "Release",
        "Dist"
    }

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

project "yage"
    location "yage"
    kind "StaticLib"
    language "C++"
	 cppdialect "c++17"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("obj/" .. outputdir .. "/%{prj.name}")

    files
    {
        "%{prj.name}/src/**.cpp",
		 "%{prj.name}/src/**.h",
    }

    includedirs
    {
        "3rd-party/include/vulkan",
        "3rd-party/include/glfw",
        "3rd-party/include/spdlog",
        "3rd-party/include/glm",
        "%{prj.name}/src/",
        "%{prj.name}/src/graphics"
    }
    libdirs
    {
        "3rd-party/%{cfg.system}/glfw",
        "3rd-party/%{cfg.system}/vulkan"
    }


    
    defines
    {
        "SPDLOG_COMPILED_LIB"
    }

    filter "system:windows"
        systemversion "latest"
        defines
        {
            "YAGE_PLATFORM_WINDOWS"
        }

		links
		{
			"glfw3",
			"vulkan",
			"opengl32.lib"

		}

    filter "system:linux"
        defines
        {
            "YAGE_PLATFORM_LINUX"
        }

		links
		{
			"glfw",
			"vulkan"
		}

    filter "configurations:Debug"
        defines "YAGE_DEBUG"
		runtime "Debug"
        symbols "On"

    filter "configurations:Release"
        defines "YAGE_RELEASE"
		runtime "Release"
        optimize "On"

    filter "configurations:Dist"
        defines "YAGE_DIST"
		runtime "Release"
        optimize "On"

    postbuildcommands
    {
        ("{COPY} %{cfg.buildtarget.relpath} ../bin/" ..outputdir.. "/Editor"),
    }

project "editor"
    location "editor"
    kind "ConsoleApp"
    language "C++"
	cppdialect "c++17"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("obj/" .. outputdir .. "/%{prj.name}")
    
    files
    {
        "%{prj.name}/src/**.cpp",
		"%{prj.name}/src/**.h"
    }

    includedirs
    {
        "3rd-party/include/vulkan",
        "3rd-party/include/glfw",
        "3rd-party/include/spdlog",
        "3rd-party/include/glm",
        "yage/src/",
        "%{prj.name}/src/"
    }

    libdirs
    {
        "3rd-party/%{cfg.system}/glfw",
        "3rd-party/%{cfg.system}/vulkan"
    }

    
    filter "system:windows"
        systemversion "latest"

        defines
        {
            "YAGE_PLATFORM_WINDOWS"
        }

		links
		{
		    "glfw3",
		    "vulkan",
		    "yage",
			"opengl32.lib"
		}

    filter "system:linux"
        defines
        {
            "YAGE_PLATFORM_LINUX"
        }

		links
		{
		    "glfw",
		    "vulkan",
		    "yage"
		}

filter "configurations:Debug"
    defines "YAGE_DEBUG"
	runtime "Debug"
    symbols "On"

filter "configurations:Release"
    defines "YAGE_RELEASE"
	runtime "Release"
    optimize "On"

filter "configurations:Dist"
    defines "YAGE_DIST"
	runtime "Release"
    optimize "On"
