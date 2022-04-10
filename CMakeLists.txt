cmake_minimum_required(VERSION 3.23.0)

project(OLAS VERSION 1.0)

# #Find library 
find_library(my_glewlib glew NAMES glew2 GLEW GLEW2 glew32  glew32s 
PATHS 
    "D:\\Development Libraries\\glew-2.1.0"
PATH_SUFFIXES 
    "lib\\Release\\x64"
    "bin\\Release\\x64"
DOC 
    "glew library")

if(${myglewlib} STREQUAL myglewlib-NOTFOUND)
    message(FATAL_ERROR "no glew, sad day")
else()
    message(STATUS "glew found! as ${myglewlib}")
    list(APPEND EXTRA_INCLUDE_DIRS "D:\\Development Libraries\\glew-2.1.0\\include")
    list(APPEND EXTRA_LINKS ${myglewlib})
    target_link_libraries(${PROJECT_NAME} ${myglewlib})
    target_link_directories(${PROJECT_NAME} "D:\\Development Libraries\\glew-2.1.0\\include")
endif()

#Find library for cmake
#find_library(myglewlib glew NAMES glew2 GLEW GLEW2 DOC "glew library" ) #you can use the REQUIRED and the if statement is no longer needed
#if(${myglewlib} STREQUAL myglewlib-NOTFOUND)
#    message(FATAL_ERROR "no glew, sad day")
#else()
#    message(STATUS "glew found! as ${myglewlib}")
#endif()

#find_library(myglulib glu NAMES GLU DOC "glu library")
#if(${myglulib}) # or : if (${myglewlib} STREQUAL myglewlib-NOTFOUND)
#    message(FATAL_ERROR "no glu, sad day")
#else()
#    message(STATUS "glu found! as ${myglulib}")
#endif()

#find_library(myglulib gl NAMES GLU DOC "gu library")
#if(${mygllib}) # or : if (${myglewlib} STREQUAL myglewlib-NOTFOUND)
#    message(FATAL_ERROR "no gl, sad day")
#else()
#    message(STATUS "gl found! as ${myglulib}")
#endif()


if(USE_ADDER)
    add_subdirectory(adder)

    list(APPEND EXTRA_LIB_DIRS adder)
    list(APPEND EXTRA_INCLUDES "${PROJECT_SOURCE_DIR} adder")
    list(APPEND EXTRA_LINKS adder)
endif()

configure_file(OLASConfig.h.in OLASConfig.h)

add_executable(${PROJECT_NAME} main.cpp)

target_include_directories(${PROJECT_NAME} PUBLIC ${PROJECT_BINARY_DIR})

#adder use logic
option(USE_ADDER "A simple library for adding 2 floats" ON)

# DOWNLOAD ALL THE SUBMODULES IF NEEDED
find_package(Git QUIET)
if(GIT_FOUND AND EXISTS "${PROJECT_SOURCE_DIR}/.git")
#Update submodules as needed
    option(GIT_SUBMODULE "Check submodules during build" ON)
    if(GIT_SUBMODULE)
        message(STATUS "Submodule update")
        execute_process(COMMAND ${GIT_EXECUTABLE} submodule update --init --recursive
        WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
        RESULT_VARIABLE GIT_SUBMOD_RESULT)
        if(NOT GIT_SUBMOD_RESULT EQUAL "0")
            message(FATAL_ERROR "git submodule update -- init failed with ${GIT_SUBMOD_RESULT}, please check")
        endif()
    endif()
endif()

# Check all the submodules
if(NOT EXISTS "${PROJECT_SOURCE_DIR}/external/glfw/CMakeLists.txt")
    message(FATAL_ERROR "The glfw submodules was not downloaded! GIT_MODULE was turned off or failed")
endif()

add_subdirectory(external/glfw)
target_include_directories(${PROJECT_NAME} 
    PUBLIC external/glfw/include
    ${EXTRA_INCLUDES}
) 
target_link_directories(${PROJECT_NAME}
    PRIVATE external/glfw/src
    ${EXTRA_LIB_DIRS}
) 

target_link_libraries(${PROJECT_NAME} ${EXTRA_LINKS} glfw)

install(TARGETS ${PROJECT_NAME} DESTINATION bin)
install(FILES "${PROJECT_BINARY_DIR}/OLASconfig.h" DESTINATION include)

include(InstallRequiredSystemLibraries)
set(CPACK_RESOURCE_FILE_LICENCE "${CMAKE_CURRENT_SOURCE_DIR}/Licence.txt")
set(CPACK_PACKAGE_VERSION_MAJOR "${Tutorial_VERSION_MAJOR}")
set(CPACK_PACKAGE_VERSION_MINOR "${Tutorial_VERSION_MINOR}")
include(CPACK)

