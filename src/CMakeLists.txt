set(HEADER_LIST "${OpenGLUdemy_SOURCE_DIR}/include/CoreOpenGLUdemy.h")

add_library(CoreOpenGLUdemy CoreOpenGLUdemy.cpp ${HEADER_LIST})

target_include_directories(CoreOpenGLUdemy PUBLIC ../include)

target_link_libraries(CoreOpenGLUdemy PRIVATE ${CONAN_LIBS})

# All users of this library will need at least C++11
target_compile_features(CoreOpenGLUdemy PUBLIC cxx_std_11)

# IDEs should put the headers in a nice place
source_group(
  TREE "${PROJECT_SOURCE_DIR}/include"
  PREFIX "Header Files"
  FILES ${HEADER_LIST})
