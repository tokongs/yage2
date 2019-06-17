#include <YageEditor.h>

YageEditor::YageEditor(){
	m_window = std::make_shared<yage::Window>(WIDTH, HEIGHT);
	m_vulkanDevice = std::make_shared<yage::VulkanDevice>(m_window);
}

YageEditor::~YageEditor(){

}

void YageEditor::run(){
    m_running = true;
    while(!m_window->windowShouldClose()){
        m_window->update();
        m_vulkanDevice->drawFrame();
    }

    m_vulkanDevice->waitDeviceIdle();
}