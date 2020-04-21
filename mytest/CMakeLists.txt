cmake_minimum_required(VERSION 3.17.1)
 
project(Trunk)
 
set(CMAKE_CXX_STANDARD 11)
 
add_executable(Trunk main.cpp)
 
target_link_libraries(Trunk
    pthread
    oatpp
)
