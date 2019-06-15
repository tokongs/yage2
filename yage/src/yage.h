#pragma once
#include <Application.h>
#include <Logger.h>
#include <assert.h>


extern yage::Application* yage::createApp();

int main() {

	yage::Application* app = yage::createApp();
	app->run();

	delete app;
	return 0;
}
