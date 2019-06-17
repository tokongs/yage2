#include <Window.h>

namespace yage{

    void error_callback(int error, const char* description){
        YAGE_ERROR("GLFW ERROR CALLBACK: code: {} {}", error, description);
    }

    Window::Window(const int width, const int height)
    : m_width(width), m_height(height){
        if(!glfwInit()){
            YAGE_ERROR("Failed to initialize GLFW!");
        }
        glfwSetErrorCallback(error_callback);

        glfwWindowHint(GLFW_CLIENT_API, GLFW_NO_API);
        glfwWindowHint(GLFW_RESIZABLE, GLFW_FALSE);

        m_glfwWindow = glfwCreateWindow(m_width, m_height, "", nullptr, nullptr);
        if(!m_glfwWindow){
            YAGE_ERROR("Failed to create GLFW window!");
        }
    }

    Window::~Window(){
        YAGE_INFO("Terminating GLFW");
        glfwDestroyWindow(m_glfwWindow);
        glfwTerminate();
    }

    void Window::update(){
        glfwPollEvents();
    }

    bool Window::windowShouldClose() const{
        return glfwWindowShouldClose(m_glfwWindow);
    }

    GLFWwindow* Window::getGLFWwindow(){
        return m_glfwWindow;
    }
}