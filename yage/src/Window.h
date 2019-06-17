#pragma once
#define GLFW_INCLUDE_VULKAN
#include <GLFW/glfw3.h>
#include <Logger.h>


namespace yage{
    class Window {

        public:
            Window(const int width, const int height);
            ~Window();

            bool windowShouldClose() const;
            void update();

            GLFWwindow* getGLFWwindow();

        private:
            int m_width;
            int m_height;
            GLFWwindow* m_glfwWindow;



    };
}