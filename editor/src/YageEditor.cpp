#include <YageEditor.h>

YageEditor::YageEditor(){
    #ifdef YAGE_GLFW
	    m_window = std::make_shared<yage::GLFWWindow>(WIDTH, HEIGHT);
    #endif
	m_vulkanDevice = std::make_shared<yage::VulkanDevice>(m_window);
    m_running = true;
}

YageEditor::~YageEditor(){

}

void YageEditor::run(){
    while(m_running){
        m_window->update();
        m_vulkanDevice->drawFrame();
    }

    m_vulkanDevice->waitDeviceIdle();
}