#pragma once
#include <spdlog/spdlog.h>
#include <spdlog/sinks/stdout_color_sinks.h>
#include "spdlog/fmt/ostr.h"
#include <memory>

namespace yage{

    class Logger{
        public:
        static void Init();

        static std::shared_ptr<spdlog::logger> GetLogger();
        private:
        static std::shared_ptr<spdlog::logger> spdLogger;
    };
}

#define YAGE_INFO(...) yage::Logger::GetLogger()->info(__VA_ARGS__)
#define YAGE_WARN(...) yage::Logger::GetLogger()->warn(__VA_ARGS__)
#define YAGE_ERROR(...) yage::Logger::GetLogger()->error(__VA_ARGS__)