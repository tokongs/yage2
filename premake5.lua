workspace "yage"
    architecture "x64"

    configurations
    {
        "Debug",
        "Release",
        "Dist"
    }

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

project "yage"
    location "yage"
    kind "SharedLib"
    language "C++"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("obj/" .. outputdir .. "/%{prj.name}")

    files
    {
        "%{prj.name}/src/**.cpp",
        "%{prj.name}/src/graphics/**.cpp"
    }

    includedirs
    {
        "3rd-party/VulkanSDK/include",
        "3rd-party/glfw3.3/include",
        "3rd-party/spdlog-1.3.1/include",
        "%{prj.name}/src/",
        "%{prj.name}/src/graphics"
    }
    libdirs
    {
        "3rd-party/glfw3.3/build/src/",
        "3rd-party/glm/build/glm/",
        "3rd-party/VulkanSDK/lib/"
    }

    links
    {
        "glfw",
        "glm_shared",
        "vulkan"
    }
    
    defines
    {
        "SPDLOG_COMPILED_LIB"
    }

    cppdialect "c++17"

    filter "system:windows"
        staticruntime "On"
        systemversion "latest"
        defines
        {
            "YAGE_PLATFORM_WINDOWS"
        }

    filter "system:linux"
        defines
        {
            "YAGE_PLATFORM_LINUX"
        }

    filter "configurations:Debug"
        defines "YAGE_DEBUG"
        symbols "On"

    filter "configurations:Release"
        defines "YAGE_RELEASE"
        optimize "On"

    filter "configurations:Dist"
        defines "YAGE_DIST"
        optimize "On"

    postbuildcommands
    {
        ("{COPY} %{cfg.buildtarget.relpath} ../bin/" ..outputdir.. "/Editor"),
    }

project "editor"
    location "editor"
    kind "ConsoleApp"

    language "C++"


    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("obj/" .. outputdir .. "/%{prj.name}")
    
    files
    {
        "%{prj.name}/src/**.cpp",
    }

    includedirs
    {
        "3rd-party/VulkanSDK/include",
        "3rd-party/spdlog-1.3.1/include",
        "yage/src/",
        "%{prj.name}/src/"
    }

    libdirs
    {
        "3rd-party/glfw3.3/build/src/",
        "3rd-party/glm/build/glm/",
        "3rd-party/VulkanSDK/lib/"
    }

    links
    {
        "glfw",
        "glm_shared",
        "vulkan",
        "yage"
    }
    cppdialect "c++17"
    filter "system:windows"

        staticruntime "On"
        systemversion "latest"

        defines
        {
            "YAGE_PLATFORM_WINDOWS"
        }

    filter "system:linux"
        defines
        {
            "YAGE_PLATFORM_LINUX"
        }


filter "configurations:Debug"
    defines "YAGE_DEBUG"
    symbols "On"

filter "configurations:Release"
    defines "YAGE_RELEASE"
    optimize "On"

filter "configurations:Dist"
    defines "YAGE_DIST"
    optimize "On"
