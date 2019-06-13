#include <YageEditor.h>

YageEditor::YageEditor(){
    glfwInit();
    glfwWindowHint(GLFW_CLIENT_API, GLFW_NO_API);
    glfwWindowHint(GLFW_RESIZABLE, GLFW_FALSE);

    m_window = glfwCreateWindow(WIDTH, HEIGHT, "Vulkan test", nullptr, nullptr);

    m_device = new yage::VulkanDevice(m_window);
}

YageEditor::~YageEditor(){
    delete m_device;
    glfwDestroyWindow(m_window);
    glfwTerminate();
}

void YageEditor::run(){
    m_running = true;
    while(!glfwWindowShouldClose(m_window)){
        glfwPollEvents();
        m_device->drawFrame();
    }
}