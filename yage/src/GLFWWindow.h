#pragma once
#define GLFW_INCLUDE_VULKAN
#include <GLFW/glfw3.h>
#include <IWindow.h>
#include <Logger.h>


namespace yage{
    class GLFWWindow : public IWindow{

        public:
            GLFWWindow(const int width, const int height);
            ~GLFWWindow();
            
            virtual void update() override;

            virtual unsigned int getWidth() const override;
            virtual unsigned int getHeight() const override;

            virtual void* getUnderlyingWindow() const override;

        private:
            int m_width;
            int m_height;
            GLFWwindow* m_glfwWindow;



    };
}