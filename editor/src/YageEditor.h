#pragma once
#define GLFW_INCLUDE_VULKAN
#include <GLFW/glfw3.h>
#include <functional>
#include <yage.h>
#include <graphics/vulkan/VulkanDevice.h>



class YageEditor : public yage::Application{
    public:
        YageEditor();
        ~YageEditor();

        void run() override;

        GLFWwindow* m_window;
        yage::VulkanDevice* m_device;

    private:
        const int WIDTH = 1024;
        const int HEIGHT = 768;

};

yage::Application* yage::createApp(){
    return new YageEditor();
}