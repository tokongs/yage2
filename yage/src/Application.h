#pragma once
#include <string>


namespace yage{

    class Application{

        public:
            Application();
            ~Application();

            virtual void run() = 0;

        protected:
            bool m_running = false;
    };

    Application* createApp();
}