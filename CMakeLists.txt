cmake_minimum_required(VERSION 3.12)

# Директория макросов для cmake
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/cmake/macroses")

# настройка переменных
set(CMAKE_SKIP_BUILD_RPATH TRUE)
set(SYSROOT ${CMAKE_BINARY_DIR})
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
#Используем С++11 без расширений типа gnu++11
set(CMAKE_CXX_EXTENSIONS OFF)

# Конфигурация сборки: определяем выбор
set(BUILD_CONFIG "MAIN" CACHE STRING "Select build configuration")
file(GLOB CFGS RELATIVE "${CMAKE_CURRENT_LIST_DIR}/cmake/configs" build/cmake/configs/*.cmake)
list(TRANSFORM CFGS REPLACE "(.*).cmake" "\\1")
set_property(CACHE BUILD_CONFIG PROPERTY STRINGS ${CFGS})

# Конфигурация сборки: устанавливаем название
project(${BUILD_CONFIG})

# обязательная поддержка кеширования компиляции
# FIXME добавить позже
# include(cmake/macroses/ccache.cmake)

# общие флаги компиляции
include(cmake/macroses/common_compile.cmake)

# Платформа
include(cmake/macroses/platform.cmake)

# Отладка/релиз
include(cmake/macroses/debug.cmake)

# Настроки параметров компилятора
include(cmake/macroses/compiler.cmake)

link_directories(
	${SYSROOT}/lib
	${CMAKE_BINARY_DIR}/lib
)


add_subdirectory(backends)

# Проектно-зависимые параметры сборки
include(cmake/configs/${BUILD_CONFIG}.cmake)
