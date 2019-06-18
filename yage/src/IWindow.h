#pragma once

namespace yage{
    class IWindow{
    
        public:
    
            virtual ~IWindow() {};
    
            virtual void update() = 0;
    
            virtual unsigned int getWidth() const = 0;
            virtual unsigned int getHeight() const = 0;
    
            virtual void* getUnderlyingWindow() const = 0;
    };
}