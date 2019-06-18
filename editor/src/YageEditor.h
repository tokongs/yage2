#pragma once

#include <memory>
#include <yage.h>
#include <graphics/vulkan/VulkanDevice.h>
#include <IWindow.h>
#include <GLFWWindow.h>



class YageEditor : public yage::Application{
    public:
        YageEditor();
        ~YageEditor();

        void run() override;

    private: 
        const int WIDTH = 1024;
        const int HEIGHT = 768;
        std::shared_ptr<yage::VulkanDevice> m_vulkanDevice;
        std::shared_ptr<yage::IWindow> m_window;

};

yage::Application* yage::createApp(){
    return new YageEditor();
}