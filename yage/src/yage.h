#pragma once
#include <Application.h>

extern yage::Application* yage::createApp();

int main() {
	yage::Application* app = yage::createApp();
	app->run();
	delete app;
	return 0;
}
	
