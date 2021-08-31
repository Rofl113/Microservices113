# Настроки параметров компилятора

if (CMAKE_BUILD_TYPE STREQUAL "Debug")
	set (CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -g3")
	set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g3")
endif(CMAKE_BUILD_TYPE STREQUAL "Debug")

if (MINGW)
	message("MINGW detected")
	add_compile_options(-Wno-unknown-pragmas)
elseif(MSVC)
	message("MSVC detected")
#Параметры для компилятора GNU GCC
elseif("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU")
	message("GCC detected")
	add_compile_options(-Wno-unknown-pragmas)

#Параметры для компилятора Clang
elseif("${CMAKE_CXX_COMPILER_ID}" STREQUAL "Clang")
	message("CLANG detected")
	add_compile_options(-Wno-unknown-pragmas)
endif()
