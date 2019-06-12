#include <Logger.h>

namespace yage{

    std::shared_ptr<spdlog::logger> Logger::spdLogger = spdlog::stdout_color_mt("yage");

    void Logger::Init(){
        spdLogger->set_level(spdlog::level::trace);
    }

    std::shared_ptr<spdlog::logger> Logger::GetLogger(){
        return spdLogger;
    }
}