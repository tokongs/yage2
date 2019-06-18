#pragma once
#include <core.h>
#include <vector>
#include <algorithm>
#include <optional>
#include <memory>
#include <set>
#include <vulkan/vulkan.h>
#include <GLFW/glfw3.h>
#include <util.h>
#include <IWindow.h>


namespace yage{

    struct QueueFamilyIndices {
        std::optional<uint32_t> graphicsFamily;
        std::optional<uint32_t> presentFamily;

        bool isComplete(){
            return graphicsFamily.has_value() && presentFamily.has_value();
        }
    };

    struct SwapChainSupportDetails {
        VkSurfaceCapabilitiesKHR capabilities;
        std::vector<VkSurfaceFormatKHR> formats;
        std::vector<VkPresentModeKHR> presentModes;
    };

    class VulkanDevice{

        public:
        VulkanDevice(std::shared_ptr<IWindow> window);
        ~VulkanDevice();

        void drawFrame();
        void waitDeviceIdle();
        void recreateSwapChain();
        void notifyFramebufferSizeChange(const int framebufferWidth, const int framebufferHeighr);

        private:
        void createInstance();
        void setupDebugMessenger();
        void destroyDebugMessenger();
        void setupPhysicalDevice();
        void createLogicalDevice();
        void createSurface();
        void createSwapChain();
        void createImageViews();
        void createGraphicsPipeline();
        void createRenderPass();
        void createFramebuffers();
        void createCommandPool();
        void createCommandBuffers();
        void createSyncObjects();

        void cleanupSwapChain();

        
        VkShaderModule createShaderModule(const std::vector<char>& code);

        bool isDeviceSuitable(VkPhysicalDevice device);
        bool checkValidationLayerSupport();
        bool checkDeviceExtensionSupport(VkPhysicalDevice device);
        std::vector<const char*> getRequiredExtensions();
        void listAvailableInstanceExtensions();
        QueueFamilyIndices findQueueFamilies(VkPhysicalDevice device);

        SwapChainSupportDetails querySwapChainSupport(VkPhysicalDevice device);
        VkSurfaceFormatKHR chooseSwapSurfaceFormat(const std::vector<VkSurfaceFormatKHR>& availableFormats);
        VkPresentModeKHR chooseSwapPresentMode(const std::vector<VkPresentModeKHR>& availablePresentModes);
        VkExtent2D chooseSwapExtent(const VkSurfaceCapabilitiesKHR& capabilities);

        private:
        VkInstance                      m_instance;
        VkDebugUtilsMessengerEXT        m_debugMessenger;
        VkPhysicalDevice                m_physicalDevice;
        VkDevice                        m_device;
        VkQueue                         m_graphicsQueue;
        VkSurfaceKHR                    m_surface;
        VkQueue                         m_presentQueue;
        VkSwapchainKHR                  m_swapChain;
        VkPipelineLayout                m_pipelineLayout;
        VkRenderPass                    m_renderPass;
        VkPipeline                      m_graphicsPipeline;
        std::vector<VkImage>            m_swapChainImages;
        VkFormat                        m_swapChainImageFormat;
        VkExtent2D                      m_swapChainExtent;
        std::vector<VkImageView>        m_swapChainImageViews;
        std::vector<VkFramebuffer>      m_swapChainFramebuffers;
        VkCommandPool                   m_commandPool;
        std::vector<VkCommandBuffer>    m_commandBuffers;
        std::vector<VkSemaphore>        m_imageAvailableSemaphores;
        std::vector<VkSemaphore>        m_renderFinishedSemaphores;
        std::vector<VkFence>            m_inFlightFences;
        std::shared_ptr<IWindow>         m_window;
        size_t                          m_currentFrame = 0;
        bool                            m_frameBufferResized = false;

        const int MAX_FRAMES_IN_FLIGHT = 2;

        const std::vector<const char*> m_validationLayers = {
            "VK_LAYER_KHRONOS_validation",
            "VVK_LAYER_LUNARG_standard_validation"
        };
        const std::vector<const char*> m_deviceExtensions = {
            VK_KHR_SWAPCHAIN_EXTENSION_NAME
        };

        #ifdef YAGE_DEBUG
            const bool m_enableValidationLayers = true;
        #else
            const bool m_enableValidationLayers = false;
        #endif

        static VKAPI_ATTR VkBool32 VKAPI_CALL debugCallback(
            VkDebugUtilsMessageSeverityFlagBitsEXT messageSeverity,
            VkDebugUtilsMessageTypeFlagsEXT messageType,
            const VkDebugUtilsMessengerCallbackDataEXT* pCallbackData,
            void* pUserData){
                switch(messageSeverity){
                    case VK_DEBUG_UTILS_MESSAGE_SEVERITY_ERROR_BIT_EXT:
                        YAGE_ERROR("Vulkan validation layer({}):{}", messageType,pCallbackData->pMessage);
                    break;
                    case VK_DEBUG_UTILS_MESSAGE_SEVERITY_WARNING_BIT_EXT:
                        YAGE_WARN("Vulkan validation layer({}):{}", messageType,pCallbackData->pMessage);
                    break;
                    case VK_DEBUG_UTILS_MESSAGE_SEVERITY_INFO_BIT_EXT:
                        YAGE_INFO("Vulkan validation layer({}):{}", messageType,pCallbackData->pMessage);
                    break;
                    default:
                        YAGE_INFO("Vulkan validation layer({}):{}", messageType,pCallbackData->pMessage);
                    break;
                }

                return VK_FALSE;
            }
    };
}