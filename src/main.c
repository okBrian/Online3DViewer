#ifdef __EMSCRIPTEN__
  #define EMSCRIPTEN_ENABLE
  #include <emscripten.h> 
#endif 

#include "App.h"

int main() {
  struct App* a = (struct App*) (malloc(sizeof(struct App)));;

  if (init(a) != 0) {
    return -1;
  }

  prerun(a);

  LOG_TRACE("APP RUNNING");
#if defined(EMSCRIPTEN_ENABLE)
  emscripten_set_main_loop_arg(run, a, 0, 1);
#else 
  while (!glfwWindowShouldClose(a->window)) {
    run(a);
  }
#endif

  shutdown(a);
  return 0;
}