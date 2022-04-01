cmake_minimum_required(VERSION 3.23.0)

project(OLAS)

add_executable(${PROJECT_NAME} main.cpp)

add_subdirectory(adder)
target_include_directories(${PROJECT_NAME} PRIVATE adder) #Not sure if needed, seems to work even without this
target_link_directories(${PROJECT_NAME} PRIVATE adder/) #Not sure if needed, seems to work even without this
target_link_libraries(${PROJECT_NAME} adder)

