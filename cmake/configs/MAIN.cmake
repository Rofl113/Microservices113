cmake_minimum_required(VERSION 3.12)

#add_subdirectory(${CMAKE_SOURCE_DIR}/sub)

#add_subdirectory(${CMAKE_SOURCE_DIR}/backends/Localizer)

add_subdirectory(${CMAKE_SOURCE_DIR}/frontends/main)

find_package(network_transport)
target_link_libraries (${CMAKE_PROJECT_NAME} LINK_PUBLIC network_transport)
