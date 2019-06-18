#include <GLFWWindow.h>

namespace yage{

    void error_callback(int error, const char* description){
        YAGE_ERROR("GLFW ERROR CALLBACK: code: {} {}", error, description);
    }

    GLFWWindow::GLFWWindow(const int width, const int height)
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

    GLFWWindow::~GLFWWindow(){
        YAGE_INFO("Terminating GLFW");
        glfwDestroyWindow(m_glfwWindow);
        glfwTerminate();
    }

    void GLFWWindow::update(){
        glfwPollEvents();
    }


    unsigned int GLFWWindow::getWidth() const{
        return m_width;
    }

    unsigned int GLFWWindow::getHeight() const{
        return m_height;
    }

    void* GLFWWindow::getUnderlyingWindow() const{
        return m_glfwWindow;
    }
}