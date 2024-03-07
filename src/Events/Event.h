/**
 * The event file holds the backbone of events and the codes of possible errors / or events that can occur in a program 
 * Currently supported events:
 * APP_EVENT
   * Exit 
   * Resize
   * Render
 * APP_EXCEPTION
   * GLFW or GLAD couldn't be loaded
   * Invalid File Format
   * Shader couldn't be loaded or failed to compile
*/

#ifndef EVENT_H
#define EVENT_H

// App Event
#define EXIT_EVENT   0
#define RESIZE_EVENT 1  

// App Exception Events
#define GLFW_ERROR_EVENT   0
#define OPENGL_ERROR_EVENT 1
#define INVALID_FILE_EVENT 2
#define SHADER_ERROR_EVENT 3


enum EventType {
  APP_EVENT,
  APP_EXCEPTION
};

struct Event
{
  int name; 
  enum EventType type;
};

static const struct Event appEventArray[2] = {
  { EXIT_EVENT,   APP_EVENT },
  { RESIZE_EVENT, APP_EVENT }
};

static const struct Event exceptEventArray[4] = {
  { GLFW_ERROR_EVENT,   APP_EXCEPTION },
  { OPENGL_ERROR_EVENT, APP_EXCEPTION },
  { INVALID_FILE_EVENT, APP_EXCEPTION },
  { SHADER_ERROR_EVENT, APP_EXCEPTION }
};

#endif