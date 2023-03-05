CMAKE_MINIMUM_REQUIRED(VERSION 3.24.2 FATAL_ERROR)
PROJECT(libengine VERSION 0.0.1)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

option(BUILD_TESTS "Build library tests" ON)
option(BUILD_EXAMPLES "Build example executables" ON)

set(SOURCE_FILES engine/hello.c)
set(HEADER_FILES include/libengine/hello.h)

if (BUILD_TESTS)
    message(STATUS "Building tests...")
    find_package(Criterion REQUIRED)
    enable_testing()
    add_subdirectory(tests)
endif ()

if (BUILD_EXAMPLES)
    message(STATUS "Building examples...")
    add_subdirectory(examples)
endif ()

add_library(${PROJECT_NAME} ${SOURCE_FILES})
target_include_directories(${PROJECT_NAME} PUBLIC ${PROJECT_SOURCE_DIR}/include)