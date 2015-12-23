#include "priorityQueueMinHeap.h"
#include <iostream>
#include <algorithm>
#include <time.h>

using namespace std;

int main(){
	int prioritiesIn[] = {5,8,3,6,1,7,3,7,2,7,8,3};
	int i;
	for(i=0; i<12; i++){
		QueueData currentData;
		QueueData dataOut;
		currentData.data = i;
		currentData.priority = prioritiesIn[i];
		queue(true, currentData, &dataOut);
		cout << "Enqueued item priority: "<<dataOut.priority<<", data: "<<dataOut.data<<endl;
	}
	cout << endl;
	for(i=0; i<12; i++){
		QueueData nullItem;
		QueueData dataOut;
		queue(false, nullItem, &dataOut);
		cout << "Dequeued item priority: "<<dataOut.priority<<", data: "<<dataOut.data<<endl;
	}
	cout << "Running test"<<endl;
	time_t start = time(NULL);
	bool result = runQueue();
	time_t end = time(NULL);
	double seconds = difftime(end, start);
	cout << "Elapsed time for test: "<<seconds<<endl;
	if(result){
		return 0;
	} else{
		return -1;
	}
}
