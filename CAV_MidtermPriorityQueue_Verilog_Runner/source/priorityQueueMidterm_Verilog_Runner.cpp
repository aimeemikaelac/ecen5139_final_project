//#include "priorityQueueMinHeap.h"
//#include <iostream>
//#include <string.h>
#include "ap_int.h"

//using namespace std;

//void reinitialize(QueueData *queueData, int size);
//QueueData min(QueueData first, QueueData second);
//QueueData max(QueueData first, QueueData second);
//bool comparitor(QueueData first, QueueData second);
//int push(QueueData *queueDataHeap, int size, QueueData item);
//int pop(QueueData *queueDataHeap, int size, QueueData *itemOut);
//void min_heapify(QueueData *a,int i,int n);
//void build_minheap(QueueData *a, int n);
//bool runTest();

typedef ap_uint<4> uint_4;
typedef ap_uint<2> cmd;

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
bool runQueue(volatile uint_4 *priorityOut, volatile uint_4 priorityIn, volatile cmd *cmdOut,
		volatile bool empty, volatile bool full){
#pragma HLS INTERFACE ap_none port=full

#pragma HLS INTERFACE ap_none port=empty

#pragma HLS INTERFACE ap_none port=cmdOut

#pragma HLS INTERFACE ap_none port=priorityIn

#pragma HLS INTERFACE ap_none port=priorityOut

#pragma HLS INTERFACE ap_ctrl_hs port=return

#pragma HLS RESOURCE variable=return core=AXI4LiteS

	int i, j, last =0;
	bool result = true;
//	for(j=0; j<10000; j++){
	for(j=0; j<1; j++){
//		result &= runTest();
		i=0;
		while(full == 0){
			*cmdOut = 1;
			*priorityOut = uint_4(i);
			*cmdOut = 0;
			i++;
		}
		i=0;
		while(empty == 0){
			*cmdOut = 2;
			if((uint_4)priorityIn != i){
				result = false;
			}
			*cmdOut = 0;
			i++;
		}
		i=0;
		while(full == 0){
			*cmdOut = 1;
			*priorityOut = uint_4(random_priorities[i]);
			*cmdOut = 0;
			i++;
		}
		while(empty == 0){
			*cmdOut = 2;
			if(last > (uint_4)priorityIn){
				result = false;
			}
			*cmdOut = 0;
			last = ((uint_4)priorityIn).to_int();
		}

	}
//	cout << "Result: "<<result<<endl;
	return result;
}

//bool runTest(){
//	int i;
//	bool result = true;
////	int dequeuedItems[STORAGE_SIZE];
//	for(i=0; i<STORAGE_SIZE; i++){
//		QueueData current, temp;
//		current.data = STORAGE_SIZE - i-1;
//		current.priority = i;
//		queue(true, current, &temp);
//	}
//	for(i=0; i<STORAGE_SIZE; i++){
//		QueueData temp, out;
//		queue(false, temp, &out);
//		if(out.priority != i){// || out.data != STORAGE_SIZE-i-1){
//			result = false;
//		}
////		cout << "Dequeued: "<<out.priority<<", "<<out.data<<", i: "<<i<<", STORAGE_SIZE - i: "<<STORAGE_SIZE-i-1<<endl;
//	}
//	for(i=0; i<STORAGE_SIZE; i++){
//		QueueData current, temp;
//		current.data = STORAGE_SIZE - i-1;
//		current.priority = random_priorities[i%200];
//		queue(true, current, &temp);
//	}
////	for(i=0; i<STORAGE_SIZE; i++){
////		dequeuedItems[i] = -1;
////	}
//	int last = 0;
//	for(i=0; i<STORAGE_SIZE; i++){
//		QueueData temp, out;
//		queue(false, temp, &out);
//		if(out.priority < last){
//			result = false;
//		}
////		if(out.data >= STORAGE_SIZE || dequeuedItems[out.data] > 0){
////			result = false;
////		}
////		cout << "Dequeued: "<<out.priority<<", "<<out.data<<", i: "<<i<<", STORAGE_SIZE - i: "<<STORAGE_SIZE-i-1<<endl;
////		dequeuedItems[out.data] = out.data;
////		last = out.priority;
//	}
//	return result;
//}

