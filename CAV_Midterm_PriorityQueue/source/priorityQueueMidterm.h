#include <limits>

#define STORAGE_SIZE 2000

typedef struct QueueData{
	int priority;
	int data;
} QueueData;

void queue(bool isPush, QueueData inData, QueueData *outData);
bool runQueue();
