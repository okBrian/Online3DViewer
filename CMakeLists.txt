cmake_minimum_required(VERSION 3.20)
#emcmake cmake .. 
#make
unset(${CMAKE_GENERATOR})
set(${CMAKE_GENERATOR} "Unix Makefiles")

project(Online3DModeler)


file(GLOB_RECURSE APP_SOURCE src/*.c src/*.h)

find_package(OpenGL REQUIRED)
add_subdirectory(vendor/glad)
add_subdirectory(vendor/c-logger)

if(EMSCRIPTEN)
    option(JS_ONLY "Compiles to native JS (No WASM)" ON)
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/public")
else()
    set( GLFW_BUILD_DOCS OFF CACHE BOOL  "GLFW lib only" )
    set( GLFW_INSTALL OFF CACHE BOOL  "GLFW lib only" )
    add_subdirectory(vendor/glfw)
endif()


add_executable(${PROJECT_NAME} ${APP_SOURCE})

if(EMSCRIPTEN)
    message("Using emscripten!")
    set(CMAKE_EXECUTABLE_SUFFIX ".html")
    set_target_properties(${PROJECT_NAME} PROPERTIES LINK_FLAGS "--preload-file ${CMAKE_CURRENT_SOURCE_DIR}/res/default.vert@/res/default.vert --preload-file ${CMAKE_CURRENT_SOURCE_DIR}/res/default.frag@/res/default.frag -s USE_GLFW=3 -s USE_WEBGL2=1 ")
    target_include_directories(${PROJECT_NAME} PRIVATE "$ENV{EMSDK}/upstream/emscripten/cache/sysroot/include")
    #target_link_libraries(${PROJECT_NAME} PRIVATE --shell-file ${CMAKE_SOURCE_DIR}/emscripten/shell_minimal.html)
else()
    message("Not using emscripten!")
    target_link_libraries(${PROJECT_NAME} PRIVATE glfw)
    target_link_directories(${PROJECT_NAME} PRIVATE glfw/include)
endif()



target_link_libraries(${PROJECT_NAME}
    PRIVATE glad
    PRIVATE clogger
)

target_include_directories(${PROJECT_NAME}
    PRIVATE clogger/src/
    ${OPENGL_INCLUDE_DIRS}
)
