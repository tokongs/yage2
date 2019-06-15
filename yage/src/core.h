#pragma once
#include <Application.h>
#include <Logger.h>
#include <assert.h>

#ifdef YAGE_DEBUG
#define YAGE_ASSERT(x, ...) { if(!(x)) {YAGE_ERROR("Assertion fail! {0}", __VA_ARGS__); assert(false);}}
#else
#define YAGE_ASSERT(x, ...) 
#endif
