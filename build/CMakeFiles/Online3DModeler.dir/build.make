# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/bok/dev/Online3DModeler

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/bok/dev/Online3DModeler/build

# Include any dependencies generated for this target.
include CMakeFiles/Online3DModeler.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Online3DModeler.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Online3DModeler.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Online3DModeler.dir/flags.make

CMakeFiles/Online3DModeler.dir/src/App.c.o: CMakeFiles/Online3DModeler.dir/flags.make
CMakeFiles/Online3DModeler.dir/src/App.c.o: CMakeFiles/Online3DModeler.dir/includes_C.rsp
CMakeFiles/Online3DModeler.dir/src/App.c.o: ../src/App.c
CMakeFiles/Online3DModeler.dir/src/App.c.o: CMakeFiles/Online3DModeler.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bok/dev/Online3DModeler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Online3DModeler.dir/src/App.c.o"
	/home/bok/emsdk/upstream/emscripten/emcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Online3DModeler.dir/src/App.c.o -MF CMakeFiles/Online3DModeler.dir/src/App.c.o.d -o CMakeFiles/Online3DModeler.dir/src/App.c.o -c /home/bok/dev/Online3DModeler/src/App.c

CMakeFiles/Online3DModeler.dir/src/App.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Online3DModeler.dir/src/App.c.i"
	/home/bok/emsdk/upstream/emscripten/emcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/bok/dev/Online3DModeler/src/App.c > CMakeFiles/Online3DModeler.dir/src/App.c.i

CMakeFiles/Online3DModeler.dir/src/App.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Online3DModeler.dir/src/App.c.s"
	/home/bok/emsdk/upstream/emscripten/emcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/bok/dev/Online3DModeler/src/App.c -o CMakeFiles/Online3DModeler.dir/src/App.c.s

CMakeFiles/Online3DModeler.dir/src/Events/EventHandler.c.o: CMakeFiles/Online3DModeler.dir/flags.make
CMakeFiles/Online3DModeler.dir/src/Events/EventHandler.c.o: CMakeFiles/Online3DModeler.dir/includes_C.rsp
CMakeFiles/Online3DModeler.dir/src/Events/EventHandler.c.o: ../src/Events/EventHandler.c
CMakeFiles/Online3DModeler.dir/src/Events/EventHandler.c.o: CMakeFiles/Online3DModeler.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bok/dev/Online3DModeler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/Online3DModeler.dir/src/Events/EventHandler.c.o"
	/home/bok/emsdk/upstream/emscripten/emcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Online3DModeler.dir/src/Events/EventHandler.c.o -MF CMakeFiles/Online3DModeler.dir/src/Events/EventHandler.c.o.d -o CMakeFiles/Online3DModeler.dir/src/Events/EventHandler.c.o -c /home/bok/dev/Online3DModeler/src/Events/EventHandler.c

CMakeFiles/Online3DModeler.dir/src/Events/EventHandler.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Online3DModeler.dir/src/Events/EventHandler.c.i"
	/home/bok/emsdk/upstream/emscripten/emcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/bok/dev/Online3DModeler/src/Events/EventHandler.c > CMakeFiles/Online3DModeler.dir/src/Events/EventHandler.c.i

CMakeFiles/Online3DModeler.dir/src/Events/EventHandler.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Online3DModeler.dir/src/Events/EventHandler.c.s"
	/home/bok/emsdk/upstream/emscripten/emcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/bok/dev/Online3DModeler/src/Events/EventHandler.c -o CMakeFiles/Online3DModeler.dir/src/Events/EventHandler.c.s

CMakeFiles/Online3DModeler.dir/src/Image/Image.c.o: CMakeFiles/Online3DModeler.dir/flags.make
CMakeFiles/Online3DModeler.dir/src/Image/Image.c.o: CMakeFiles/Online3DModeler.dir/includes_C.rsp
CMakeFiles/Online3DModeler.dir/src/Image/Image.c.o: ../src/Image/Image.c
CMakeFiles/Online3DModeler.dir/src/Image/Image.c.o: CMakeFiles/Online3DModeler.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bok/dev/Online3DModeler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/Online3DModeler.dir/src/Image/Image.c.o"
	/home/bok/emsdk/upstream/emscripten/emcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Online3DModeler.dir/src/Image/Image.c.o -MF CMakeFiles/Online3DModeler.dir/src/Image/Image.c.o.d -o CMakeFiles/Online3DModeler.dir/src/Image/Image.c.o -c /home/bok/dev/Online3DModeler/src/Image/Image.c

CMakeFiles/Online3DModeler.dir/src/Image/Image.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Online3DModeler.dir/src/Image/Image.c.i"
	/home/bok/emsdk/upstream/emscripten/emcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/bok/dev/Online3DModeler/src/Image/Image.c > CMakeFiles/Online3DModeler.dir/src/Image/Image.c.i

CMakeFiles/Online3DModeler.dir/src/Image/Image.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Online3DModeler.dir/src/Image/Image.c.s"
	/home/bok/emsdk/upstream/emscripten/emcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/bok/dev/Online3DModeler/src/Image/Image.c -o CMakeFiles/Online3DModeler.dir/src/Image/Image.c.s

CMakeFiles/Online3DModeler.dir/src/Shader/Shader.c.o: CMakeFiles/Online3DModeler.dir/flags.make
CMakeFiles/Online3DModeler.dir/src/Shader/Shader.c.o: CMakeFiles/Online3DModeler.dir/includes_C.rsp
CMakeFiles/Online3DModeler.dir/src/Shader/Shader.c.o: ../src/Shader/Shader.c
CMakeFiles/Online3DModeler.dir/src/Shader/Shader.c.o: CMakeFiles/Online3DModeler.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bok/dev/Online3DModeler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/Online3DModeler.dir/src/Shader/Shader.c.o"
	/home/bok/emsdk/upstream/emscripten/emcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Online3DModeler.dir/src/Shader/Shader.c.o -MF CMakeFiles/Online3DModeler.dir/src/Shader/Shader.c.o.d -o CMakeFiles/Online3DModeler.dir/src/Shader/Shader.c.o -c /home/bok/dev/Online3DModeler/src/Shader/Shader.c

CMakeFiles/Online3DModeler.dir/src/Shader/Shader.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Online3DModeler.dir/src/Shader/Shader.c.i"
	/home/bok/emsdk/upstream/emscripten/emcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/bok/dev/Online3DModeler/src/Shader/Shader.c > CMakeFiles/Online3DModeler.dir/src/Shader/Shader.c.i

CMakeFiles/Online3DModeler.dir/src/Shader/Shader.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Online3DModeler.dir/src/Shader/Shader.c.s"
	/home/bok/emsdk/upstream/emscripten/emcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/bok/dev/Online3DModeler/src/Shader/Shader.c -o CMakeFiles/Online3DModeler.dir/src/Shader/Shader.c.s

CMakeFiles/Online3DModeler.dir/src/glBuffers/glBuffers.c.o: CMakeFiles/Online3DModeler.dir/flags.make
CMakeFiles/Online3DModeler.dir/src/glBuffers/glBuffers.c.o: CMakeFiles/Online3DModeler.dir/includes_C.rsp
CMakeFiles/Online3DModeler.dir/src/glBuffers/glBuffers.c.o: ../src/glBuffers/glBuffers.c
CMakeFiles/Online3DModeler.dir/src/glBuffers/glBuffers.c.o: CMakeFiles/Online3DModeler.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bok/dev/Online3DModeler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/Online3DModeler.dir/src/glBuffers/glBuffers.c.o"
	/home/bok/emsdk/upstream/emscripten/emcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Online3DModeler.dir/src/glBuffers/glBuffers.c.o -MF CMakeFiles/Online3DModeler.dir/src/glBuffers/glBuffers.c.o.d -o CMakeFiles/Online3DModeler.dir/src/glBuffers/glBuffers.c.o -c /home/bok/dev/Online3DModeler/src/glBuffers/glBuffers.c

CMakeFiles/Online3DModeler.dir/src/glBuffers/glBuffers.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Online3DModeler.dir/src/glBuffers/glBuffers.c.i"
	/home/bok/emsdk/upstream/emscripten/emcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/bok/dev/Online3DModeler/src/glBuffers/glBuffers.c > CMakeFiles/Online3DModeler.dir/src/glBuffers/glBuffers.c.i

CMakeFiles/Online3DModeler.dir/src/glBuffers/glBuffers.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Online3DModeler.dir/src/glBuffers/glBuffers.c.s"
	/home/bok/emsdk/upstream/emscripten/emcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/bok/dev/Online3DModeler/src/glBuffers/glBuffers.c -o CMakeFiles/Online3DModeler.dir/src/glBuffers/glBuffers.c.s

CMakeFiles/Online3DModeler.dir/src/main.c.o: CMakeFiles/Online3DModeler.dir/flags.make
CMakeFiles/Online3DModeler.dir/src/main.c.o: CMakeFiles/Online3DModeler.dir/includes_C.rsp
CMakeFiles/Online3DModeler.dir/src/main.c.o: ../src/main.c
CMakeFiles/Online3DModeler.dir/src/main.c.o: CMakeFiles/Online3DModeler.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bok/dev/Online3DModeler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/Online3DModeler.dir/src/main.c.o"
	/home/bok/emsdk/upstream/emscripten/emcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Online3DModeler.dir/src/main.c.o -MF CMakeFiles/Online3DModeler.dir/src/main.c.o.d -o CMakeFiles/Online3DModeler.dir/src/main.c.o -c /home/bok/dev/Online3DModeler/src/main.c

CMakeFiles/Online3DModeler.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Online3DModeler.dir/src/main.c.i"
	/home/bok/emsdk/upstream/emscripten/emcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/bok/dev/Online3DModeler/src/main.c > CMakeFiles/Online3DModeler.dir/src/main.c.i

CMakeFiles/Online3DModeler.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Online3DModeler.dir/src/main.c.s"
	/home/bok/emsdk/upstream/emscripten/emcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/bok/dev/Online3DModeler/src/main.c -o CMakeFiles/Online3DModeler.dir/src/main.c.s

CMakeFiles/Online3DModeler.dir/src/vendor/stb_image.c.o: CMakeFiles/Online3DModeler.dir/flags.make
CMakeFiles/Online3DModeler.dir/src/vendor/stb_image.c.o: CMakeFiles/Online3DModeler.dir/includes_C.rsp
CMakeFiles/Online3DModeler.dir/src/vendor/stb_image.c.o: ../src/vendor/stb_image.c
CMakeFiles/Online3DModeler.dir/src/vendor/stb_image.c.o: CMakeFiles/Online3DModeler.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bok/dev/Online3DModeler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/Online3DModeler.dir/src/vendor/stb_image.c.o"
	/home/bok/emsdk/upstream/emscripten/emcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Online3DModeler.dir/src/vendor/stb_image.c.o -MF CMakeFiles/Online3DModeler.dir/src/vendor/stb_image.c.o.d -o CMakeFiles/Online3DModeler.dir/src/vendor/stb_image.c.o -c /home/bok/dev/Online3DModeler/src/vendor/stb_image.c

CMakeFiles/Online3DModeler.dir/src/vendor/stb_image.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Online3DModeler.dir/src/vendor/stb_image.c.i"
	/home/bok/emsdk/upstream/emscripten/emcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/bok/dev/Online3DModeler/src/vendor/stb_image.c > CMakeFiles/Online3DModeler.dir/src/vendor/stb_image.c.i

CMakeFiles/Online3DModeler.dir/src/vendor/stb_image.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Online3DModeler.dir/src/vendor/stb_image.c.s"
	/home/bok/emsdk/upstream/emscripten/emcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/bok/dev/Online3DModeler/src/vendor/stb_image.c -o CMakeFiles/Online3DModeler.dir/src/vendor/stb_image.c.s

# Object files for target Online3DModeler
Online3DModeler_OBJECTS = \
"CMakeFiles/Online3DModeler.dir/src/App.c.o" \
"CMakeFiles/Online3DModeler.dir/src/Events/EventHandler.c.o" \
"CMakeFiles/Online3DModeler.dir/src/Image/Image.c.o" \
"CMakeFiles/Online3DModeler.dir/src/Shader/Shader.c.o" \
"CMakeFiles/Online3DModeler.dir/src/glBuffers/glBuffers.c.o" \
"CMakeFiles/Online3DModeler.dir/src/main.c.o" \
"CMakeFiles/Online3DModeler.dir/src/vendor/stb_image.c.o"

# External object files for target Online3DModeler
Online3DModeler_EXTERNAL_OBJECTS =

../public/Online3DModeler.html: CMakeFiles/Online3DModeler.dir/src/App.c.o
../public/Online3DModeler.html: CMakeFiles/Online3DModeler.dir/src/Events/EventHandler.c.o
../public/Online3DModeler.html: CMakeFiles/Online3DModeler.dir/src/Image/Image.c.o
../public/Online3DModeler.html: CMakeFiles/Online3DModeler.dir/src/Shader/Shader.c.o
../public/Online3DModeler.html: CMakeFiles/Online3DModeler.dir/src/glBuffers/glBuffers.c.o
../public/Online3DModeler.html: CMakeFiles/Online3DModeler.dir/src/main.c.o
../public/Online3DModeler.html: CMakeFiles/Online3DModeler.dir/src/vendor/stb_image.c.o
../public/Online3DModeler.html: CMakeFiles/Online3DModeler.dir/build.make
../public/Online3DModeler.html: vendor/glad/libglad.a
../public/Online3DModeler.html: vendor/c-logger/libclogger.a
../public/Online3DModeler.html: CMakeFiles/Online3DModeler.dir/linklibs.rsp
../public/Online3DModeler.html: CMakeFiles/Online3DModeler.dir/objects1.rsp
../public/Online3DModeler.html: CMakeFiles/Online3DModeler.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/bok/dev/Online3DModeler/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking C executable ../public/Online3DModeler.html"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Online3DModeler.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Online3DModeler.dir/build: ../public/Online3DModeler.html
.PHONY : CMakeFiles/Online3DModeler.dir/build

CMakeFiles/Online3DModeler.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Online3DModeler.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Online3DModeler.dir/clean

CMakeFiles/Online3DModeler.dir/depend:
	cd /home/bok/dev/Online3DModeler/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bok/dev/Online3DModeler /home/bok/dev/Online3DModeler /home/bok/dev/Online3DModeler/build /home/bok/dev/Online3DModeler/build /home/bok/dev/Online3DModeler/build/CMakeFiles/Online3DModeler.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Online3DModeler.dir/depend
