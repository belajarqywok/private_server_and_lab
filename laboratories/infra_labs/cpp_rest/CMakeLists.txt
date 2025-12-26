cmake_minimum_required(VERSION 3.16)
project(cpp_rest LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include_directories(dtos)
include_directories(handlers)
include_directories(includes)

add_executable(cpp_rest main.cpp)

