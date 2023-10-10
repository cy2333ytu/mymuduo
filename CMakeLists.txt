cmake_minimum_required(VERSION 2.5)
project(mymuduo)

# set the path of dynamic lib
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
#set debug info
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -g -std=c++11 -lpthread")

# define complie files
aux_source_directory(. SRC_LIST)

# create dynamic lib
add_library(mymuduo SHARED ${SRC_LIST})

# create executable file
file(GLOB project_file
    ${PROJECT_SOURCE_DIR}/*.cc)
#add_executable(test ${project_file}) // the effect is same as follows
add_executable(test ${SRC_LIST})    