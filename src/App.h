/**
 * The main struct that runs the program
 * The program's structures goes as follows
 *  Init: Where dependencies like OpenGL and GLFW are loaded
 *  Run: Where the program actually runs
 *  Shutdown: Where all dependencies are shutdown and all heap allocated items are freed
*/

#ifndef APP_H
#define APP_H

#include <stdio.h>
#include <stdlib.h>

#include <math.h>

#include <glad/glad.h>
#include <GLFW/glfw3.h>

#include <logger.h>

#include "Events/EventHandler.h"
#include "Shader/Shader.h"


struct App {
  GLFWwindow* window;
  struct EventQueue* appQueue;
  struct EventQueue* exceptQueue;
  struct ShaderProgram* shaderProgram;
  GLuint VAO;
  
};

int init(struct App* app);
void prerun(struct App* app);
void run(void* app);
void shutdown(struct App* app);

#endif

