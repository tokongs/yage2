#pragma once
#define GLFW_INCLUDE_VULKAN
#include <GLFW/glfw3.h>

#include <yage.h>
#include <graphics/vulkan/VulkanDevice.h>



class YageEditor : public yage::Application{
    public:
        YageEditor();
        ~YageEditor();

        void run() override;

    private:
    GLFWwindow* m_window;
    yage::VulkanDevice* m_device;
    const int WIDTH = 800;
    const int HEIGHT = 600;

};

yage::Application* yage::createApp(){
    return new YageEditor();
}