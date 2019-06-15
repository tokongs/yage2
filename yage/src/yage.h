#pragma once
#include <Application.h>
#include <Logger.h>
#include <assert.h>


extern yage::Application* yage::createApp();

int main() {

	yage::Application* app = yage::createApp();
	delete app;
	return 0;
}
	
