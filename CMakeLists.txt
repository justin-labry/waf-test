cmake_minimum_required(VERSION 3.10)
project(mutex_example)

set(CMAKE_CXX_STANDARD 11)
set(pthread)

add_executable(mutex_example mutex_example.cpp)