# Настройки для отладочной и релизной сборок

if (CMAKE_BUILD_TYPE STREQUAL "Release")
	add_definitions(-O2 -DNDEBUG)
else()
	# Debug build
	set(CMAKE_BUILD_TYPE "Debug" CACHE STRING "")
endif()
