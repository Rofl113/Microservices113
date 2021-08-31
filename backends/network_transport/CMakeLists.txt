cmake_minimum_required(VERSION 3.12)

set(NAME_LIB PRIVATE network_transport)

set(HEADERS PRIVATE
	INetworkTransport.hpp
	DataRequest.hpp
)

set(SOURCES PRIVATE
	NetworkTransport.cpp
)

#add_library(${NAME_LIB} STATIC ${SOURCES} ${HEADERS})
add_library(${NAME_LIB} SHARED ${SOURCES} ${HEADERS})

target_compile_definitions(${NAME_LIB} PUBLIC ${NAME_LIB})

#target_include_directories (${NAME_LIB} PUBLIC ${PROJECT_SOURCE_DIR})
