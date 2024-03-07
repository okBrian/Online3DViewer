#include "App.h"
#include "Events/EventHandler.h"
#include "Shader/Shader.h"

int init(struct App* app) {

	logger_initConsoleLogger(stdout);
	logger_setLevel(LogLevel_TRACE);

  LOG_TRACE("APP INIT");
  
  if (!glfwInit()) {
    LOG_FATAL("GLFW could not be initiated");
    return -1;
  }

  app->window = glfwCreateWindow(1280, 1024, "Hello World", NULL, NULL);
  if (!app->window) {
    LOG_FATAL("GLFW window could not be initiated");
    glfwTerminate();
    return -1;
  }


  // Ensures this happens as GLAD uses this to find the context where it is working
  glfwMakeContextCurrent(app->window);

  if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress))
  {
    LOG_FATAL("OpenGL context couldn't be loaded!");
    return -1;
  }

  glViewport(0, 0, 1280, 1024);

  // Calloc to put the default 0 into the size variables
  // Refer to EventHandler.h for more information on the queues
  app->appQueue = (struct EventQueue*) (calloc(1, sizeof(struct EventQueue)));
  app->exceptQueue = (struct EventQueue*) (calloc(1, sizeof(struct EventQueue)));
  app->shaderProgram = (struct ShaderProgram*) (calloc(1, sizeof(struct ShaderProgram)));
  
  return 0;
}

void prerun(struct App* app) {

  // shaderInit(app->shaderProgram, "../res/default.vert", "../res/default.frag");
  // Vertices coordinates
	GLfloat vertices[] =
	{
		-0.5f, -0.5f * sqrtf(3) / 3, 0.0f, // Lower left corner
		0.5f, -0.5f * sqrtf(3) / 3, 0.0f, // Lower right corner
		0.0f, 0.5f *  sqrtf(3) * 2 / 3, 0.0f // Upper corner
	};


	// Create reference containers for the Vartex Array Object and the Vertex Buffer Object
	GLuint VBO;

	// Generate the VAO and VBO with only 1 object each
	glGenVertexArrays(1, &app->VAO);
	glGenBuffers(1, &VBO);

	// Make the VAO the current Vertex Array Object by binding it
	glBindVertexArray(app->VAO);

	// Bind the VBO specifying it's a GL_ARRAY_BUFFER
	glBindBuffer(GL_ARRAY_BUFFER, VBO);
	// Introduce the vertices into the VBO
	glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

	// Configure the Vertex Attribute so that OpenGL knows how to read the VBO
	glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float), (void*)0);
	// Enable the Vertex Attribute so that OpenGL knows to use it
	glEnableVertexAttribArray(0);

	// Bind both the VBO and VAO to 0 so that we don't accidentally modify the VAO and VBO we created
	glBindBuffer(GL_ARRAY_BUFFER, 0);
	glBindVertexArray(0);
}

// void run(void* app) {
//   struct App* a = (struct App*) app;
//   glClear(GL_COLOR_BUFFER_BIT);

//   // Clean the back buffer and assign the new color to it
//   glClear(GL_COLOR_BUFFER_BIT);
//   // Tell OpenGL which Shader Program we want to use
//   glUseProgram(a->shaderProgram->id);
//   // Bind the VAO so OpenGL knows to use it
//   glBindVertexArray(a->VAO);
//   // Draw the triangle using the GL_TRIANGLES primitive
//   glDrawArrays(GL_TRIANGLES, 0, 3);
//   // Swap the back buffer with the fron

//   /* Swap front and back buffers */
//   glfwSwapBuffers(a->window);

//   /* Poll for and process events */
//   glfwPollEvents();
// }

void shutdown(struct App* app) {
  LOG_TRACE("APP SHUTDOWN");
  glfwDestroyWindow(app->window);
  glfwTerminate();
	eventHandlerShutdown(app->appQueue, app->exceptQueue);
  shaderShutdown(app->shaderProgram);
  free(app);
}