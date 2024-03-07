/**
 * The event handler is made of 2 queues.
 * The appQueue is for app events like resize, or shutdown.
 * The exceptQueue is for exceptions like OpenGL errors and such.
 * 
 * In general when events are popped off queues, The exceptions queue is handled first.
*/

#ifndef EVENTHANDLER_H
#define EVENTHANDLER_H

#include <stdlib.h>

#include "Event.h"

struct EventQueue {
  struct EventQueueNode* head;
  struct EventQueueNode* tail;
  int size;
};

struct EventQueueNode {
  struct Event e;
  struct EventQueueNode* next;
};

void eventHandlerInit(struct EventQueue* appQueue, struct EventQueue* exceptionQueue);
void eventHandlerShutdown(struct EventQueue* appQueue, struct EventQueue* exceptionQueue);
struct Event pop(struct EventQueue* queue);


#endif