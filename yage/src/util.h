#pragma once
#include <vector>
#include <string>
#include <fstream>
#include <Logger.h>>

static std::vector<char> readBinary(const std::string& filename){
    std::ifstream file(filename, std::ios::ate | std::ios::binary);

    if(!file.is_open()){
        YAGE_ERROR("Failed to open file{}", filename);
    }

    size_t fileSize = (size_t) file.tellg();
    std::vector<char> buffer(fileSize);

    file.seekg(0);
    file.read(buffer.data(), fileSize);

    file.close();

    return buffer;
}