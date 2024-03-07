#ifdef __EMSCRIPTEN__
  #define EMSCRIPTEN_ENABLE
  #include <emscripten.h> 
#endif 

#include "App.h"

struct App* a;
GLuint sp;

void run() {
  glClear(GL_COLOR_BUFFER_BIT);

  // Clean the back buffer and assign the new color to it
  glClear(GL_COLOR_BUFFER_BIT);
  // Tell OpenGL which Shader Program we want to use
  glUseProgram(sp);
  // Bind the VAO so OpenGL knows to use it
  glBindVertexArray(a->VAO);
  // Draw the triangle using the GL_TRIANGLES primitive
  glDrawArrays(GL_TRIANGLES, 0, 3);
  // Swap the back buffer with the fron

  /* Swap front and back buffers */
  glfwSwapBuffers(a->window);

  /* Poll for and process events */
  glfwPollEvents();
}


int main() {
  a = (struct App*) (malloc(sizeof(struct App)));;

  if (init(a) != 0) {
    return -1;
  }

  const char* vertBuffer = parseShaderFile("/res/default.vert");
  const char* fragBuffer = parseShaderFile("/res/default.frag");
  LOG_TRACE("%s\n", vertBuffer);
  LOG_TRACE("%s\n", fragBuffer);

  GLuint vertexShader = glCreateShader(GL_VERTEX_SHADER);
	glShaderSource(vertexShader, 1, &vertBuffer, NULL);
	glCompileShader(vertexShader);

	GLuint fragmentShader = glCreateShader(GL_FRAGMENT_SHADER);
	glShaderSource(fragmentShader, 1, &fragBuffer, NULL);
	glCompileShader(fragmentShader);

	sp = glCreateProgram();
	glAttachShader(sp, vertexShader);
	glAttachShader(sp, fragmentShader);
	glLinkProgram(sp);

	glDeleteShader(vertexShader);
	glDeleteShader(fragmentShader);
  free((char*)vertBuffer);
  free((char*)fragBuffer);

  prerun(a);

  LOG_TRACE("APP RUNNING");
#if defined(EMSCRIPTEN_ENABLE)
  emscripten_set_main_loop(run, 0, 1);
  
#else 
  while (!glfwWindowShouldClose(a->window)) {
    run(a);
  }
#endif

  shutdown(a);
  return 0;
}