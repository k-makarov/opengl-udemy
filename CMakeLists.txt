cmake_minimum_required(VERSION 3.10)

project(OpenGLUdemy VERSION 1.0)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

configure_file(src/config.h.in config.h)

include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

add_executable(OpenGLUdemy src/main.cpp)

target_link_libraries(OpenGLUdemy ${CONAN_LIBS})

target_include_directories(OpenGLUdemy PUBLIC
                           "${PROJECT_BINARY_DIR}"
                           )
