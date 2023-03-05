CMAKE_MINIMUM_REQUIRED(VERSION 3.24.2 FATAL_ERROR)
project(example)


add_executable(${PROJECT_NAME} main.c)

target_link_libraries(${PROJECT_NAME} libengine)
