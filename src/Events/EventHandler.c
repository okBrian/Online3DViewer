#include "EventHandler.h"

void handleEvent(struct EventQueue* appQueue, struct EventQueue* exceptionQueue) {
  if (exceptionQueue->size != 0) {
    struct Event e = pop(exceptionQueue);
  } else if (appQueue->size != 0) {
    struct Event e = pop(appQueue);
  }
}

void push(struct EventQueue* queue, struct Event e) {
  struct EventQueueNode* newNode = (struct EventQueueNode*) (malloc(sizeof(struct EventQueueNode)));
  if (queue->size == 0) {
    queue->head = newNode;
    queue->tail = newNode;
  } else {
    queue->tail->next = newNode;
    queue->tail = newNode;
  }
  queue->size += 1;
}

struct Event pop(struct EventQueue* queue) {
  struct Event out = queue->head->e;

  if (queue->size == 1) {
    free(queue->head);
    queue->head = NULL;
    queue->tail = NULL;
  } else {
    struct EventQueueNode* next = queue->head->next;
    free(queue->head);
    queue->head = next;
  }
  queue->size -= 1;

  return out;
}

void eventHandlerShutdown(struct EventQueue* appQueue, struct EventQueue* exceptionQueue) {
  struct EventQueueNode* curr = appQueue->head;
  struct EventQueueNode* next;
  for (int i = 0; i < appQueue->size; i++) {
    next = curr->next;
    free(curr);
    curr = next;
  }

  curr = exceptionQueue->head;
  for (int i = 0; i < exceptionQueue->size; i++) {
    next = curr->next;
    free(curr);
    curr = next;
  }

  free(appQueue);
  free(exceptionQueue);
}