CMAKE_MINIMUM_REQUIRED(VERSION 3.24.2 FATAL_ERROR)
PROJECT(libengine VERSION 0.0.1)

option(BUILD_TESTS "Build library tests" ON)
option(BUILD_EXAMPLES "Build example executables" ON)

if (BUILD_TESTS)
    message(STATUS "Building tests...")
    enable_testing()
endif ()

if (BUILD_EXAMPLES)
    message(STATUS "Building examples...")
    add_subdirectory(examples)
endif ()

add_library(${PROJECT_NAME} SHARED
        engine/hello.c)

target_include_directories(${PROJECT_NAME}
        PUBLIC ${PROJECT_SOURCE_DIR}/include)