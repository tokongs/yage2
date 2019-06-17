#pragma once

#include <memory>
#include <yage.h>
#include <graphics/vulkan/VulkanDevice.h>
#include <Window.h>



class YageEditor : public yage::Application{
    public:
        YageEditor();
        ~YageEditor();

        void run() override;

    private: 
        const int WIDTH = 1024;
        const int HEIGHT = 768;
        std::shared_ptr<yage::VulkanDevice> m_vulkanDevice;
        std::shared_ptr<yage::Window> m_window;

};

yage::Application* yage::createApp(){
    return new YageEditor();
}