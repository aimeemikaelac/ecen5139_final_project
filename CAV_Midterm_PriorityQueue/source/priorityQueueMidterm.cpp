#include "priorityQueueMidterm.h"
#include <iostream>
#include <string.h>

using namespace std;

void reinitialize(QueueData *queueData, int size);
QueueData min(QueueData first, QueueData second);
QueueData max(QueueData first, QueueData second);
//bool comparitor(QueueData first, QueueData second);
int push(QueueData *queueData, int size, QueueData item, QueueData *tempData);
int pop(QueueData *queueData, int size, QueueData *itemOut, QueueData *tempData);
bool runTest();

int random_priorities[] = { 325, 437, 294,197, 295,	178, 325, 500, 207, 384, 16, 21, 95, 491, 360, 22, 10, 263, 311, 410, 381,
							333, 65, 191, 137, 184, 354, 94, 302, 106, 316, 421, 166, 475, 364,	250, 91, 273, 500, 383,	329,
							439, 475, 234, 439, 491, 235, 240, 310, 362, 203, 53, 78, 415, 335, 214, 100, 435, 296, 69, 447,
							125, 124, 374, 65, 213, 296, 339, 211, 374, 478, 402, 85, 353, 66, 200, 463, 181, 269, 271, 412,
							58, 344, 474, 90, 105, 20, 156, 406, 309, 491, 415, 270, 92, 428, 16, 227, 441, 49, 377, 418,
							424, 417, 66, 241, 329, 157, 154, 226, 439, 246, 28, 36, 423, 411, 12, 173, 226, 172, 150, 298,
							406, 80, 325, 358, 446, 386, 75, 284, 417, 143, 24, 168, 297, 3, 116, 37, 186, 359, 222, 41, 120,
							375, 279, 366, 354, 403, 62, 429, 405, 133, 303, 388, 193, 16, 283, 427, 233, 175, 455, 129, 158,
							309, 59, 366, 108, 407, 387, 216, 381, 118, 342, 12, 61, 411, 110, 457, 88, 199, 419, 474, 116,
							145, 8, 144, 32, 106, 451, 253, 115, 202, 494, 239, 188, 351, 155, 28, 227, 264, 184
};

//top function. runs the test in the FPGA and time from the CPU
bool runQueue(){
#pragma HLS INTERFACE ap_ctrl_hs port=return

#pragma HLS RESOURCE variable=return core=AXI4LiteS

	int i;
	bool result = true;
	for(i=0; i<10000; i++){
		result &= runTest();
	}
//	cout << "Result: "<<result<<endl;
	return result;
}

bool runTest(){
	int i;
	bool result = true;
	int dequeuedItems[STORAGE_SIZE];
	for(i=0; i<STORAGE_SIZE; i++){
		QueueData current, temp;
		current.data = STORAGE_SIZE - i-1;
		current.priority = i;
		queue(true, current, &temp);
	}
	for(i=0; i<STORAGE_SIZE; i++){
		QueueData temp, out;
		queue(false, temp, &out);
		if(out.priority != i || out.data != STORAGE_SIZE-i-1){
			result = false;
		}
//		cout << "Dequeued: "<<out.priority<<", "<<out.data<<", i: "<<i<<", STORAGE_SIZE - i: "<<STORAGE_SIZE-i-1<<endl;
	}
	for(i=0; i<STORAGE_SIZE; i++){
		QueueData current, temp;
		current.data = STORAGE_SIZE - i-1;
		current.priority = random_priorities[i%200];
		queue(true, current, &temp);
	}
	for(i=0; i<STORAGE_SIZE; i++){
		dequeuedItems[i] = -1;
	}
	int last = 0;
	for(i=0; i<STORAGE_SIZE; i++){
		QueueData temp, out;
		queue(false, temp, &out);
		if(out.priority < last){
			result = false;
		}
		if(out.data >= STORAGE_SIZE || dequeuedItems[out.data] > 0){
			result = false;
		}
//		cout << "Dequeued: "<<out.priority<<", "<<out.data<<", i: "<<i<<", STORAGE_SIZE - i: "<<STORAGE_SIZE-i-1<<endl;
		dequeuedItems[out.data] = out.data;
		last = out.priority;
	}
	return result;
}


void queue(bool isPush, QueueData inData, QueueData *outData){
	//backing array for queue. is twice the size of the max queue size
	static QueueData queueData[STORAGE_SIZE * 2];
	static QueueData tempData[STORAGE_SIZE*2];
	static int size = 0;
	//for API, push if push == TRUE, else pop
	//return the pushed element for push, or an empty element if the queue is full
	if(isPush){
		if(size == STORAGE_SIZE){
			outData->data = -1;
			outData->priority = numeric_limits<int>::max();
		} else{
			size = push(queueData, size, inData, tempData);
			*outData = inData;
//			cout << "Queue state: "<<endl;
//			int i;
//			for(i=0; i<size; i++){
//				cout << queueData[i].priority << ","<<queueData[i].data<<endl;
//			}
//			cout << endl;
		}
	} else{
		if(size == 0){
			outData->data = -1;
			outData->priority = numeric_limits<int>::max();
		} else{
			size = pop(queueData, size, outData, tempData);
		}
	}
}

//check if the queue is full before calling this function
int push(QueueData *queueData, int size, QueueData item, QueueData *tempData){
	QueueData elementOne, elementTwo;
	int i;
	for(i=0; i<STORAGE_SIZE*2; i++){
#pragma HLS UNROLL

		tempData[i] = queueData[i];
	}
	reinitialize(tempData, size);
	if(size > 0){
//		cout << "New element priority: "<<item.priority<<", data: "<<item.data<<endl;
//		for(i = 0; i<size; i++){
		for(i=0; i<STORAGE_SIZE; i++){
#pragma HLS UNROLL

			elementOne = tempData[2*i];
//			cout << "Element 1 priority: "<<elementOne.priority<<", data: "<<elementOne.data<<endl;
			elementTwo = i > 0 ? tempData[2*i - 1] : item;
//			cout << "Element 2 priority: "<<elementTwo.priority<<", data: "<<elementTwo.data<<endl;
			queueData[2*i] = min(elementOne, elementTwo);
//			cout << "Min element priority: "<<queueData[2*i].priority<<", data: "<<queueData[2*i].data<<endl;
			queueData[2*i+1] = max(elementOne, elementTwo);
//			cout << "Max element priority: "<<queueData[2*i+1].priority<<", data: "<<queueData[2*i+1].data<<endl;
		}
		return size + 1;
	} else{
		queueData[0] = item;
		return 1;
	}
}

//check that the queue is not empty before call
int pop(QueueData *queueData, int size, QueueData *itemOut, QueueData *tempData){
	QueueData elementOne, elementTwo;
	int i;
//	cout << "Size: "<<size<<endl;
	*itemOut = queueData[0];
	for(i=0; i<STORAGE_SIZE*2; i++){
#pragma HLS UNROLL

		tempData[i] = queueData[i];
	}
	reinitialize(tempData, size);
//	for(i=0; i<size; i++){
	for(i=0; i<STORAGE_SIZE; i++){
#pragma HLS UNROLL

		elementOne = tempData[2*i+1];
//		cout << "Element 1 priority: "<<elementOne.priority<<", data: "<<elementOne.data<<endl;
		elementTwo = tempData[2*i+2];
//		cout << "Element 2 priority: "<<elementTwo.priority<<", data: "<<elementTwo.data<<endl;
		queueData[2*i] = min(elementOne, elementTwo);
		queueData[2*i+1] = max(elementOne, elementTwo);
	}
//	cout << "Queue state: "<<endl;
//	for(i=0; i<size; i++){
//		cout << queueData[i].priority << ","<<queueData[i].data<<endl;
//	}
	return size - 1;
}

QueueData min(QueueData first, QueueData second){
	if(first.priority < second.priority){
		return first;
	} else{
		return second;
	}
}

QueueData max(QueueData first, QueueData second){
	if(first.priority >= second.priority){
		return first;
	} else{
		return second;
	}
}

//bool comparitor(QueueData first, QueueData second){
//	return first.priority < second.priority;
//}

void reinitialize(QueueData *queueData, int size){
	int i;
	for(i=size; i<2*STORAGE_SIZE; i++){
#pragma HLS PIPELINE

		QueueData temp;
		temp.data = -1;
		temp.priority = numeric_limits<int>::max();
		queueData[i] = temp;
	}
}
