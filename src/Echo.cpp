#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <hls_stream.h>
#include "Echo.h"

//scale determines the level of reverb, normal is 1
//delay determines the time between each echo stage

//value_in is the feed-forward from the fm synth or the crossbar switch

//value_out is the result to feed to the next crossbar/module

void Echo(

	hls::stream<float> & value_in,
	hls::stream<float> & value_out,

	int delay,
	float scale

){
#pragma HLS LATENCY min=12

#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE s_axilite port=delay bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=scale bundle=CTRL_BUS

#pragma HLS INTERFACE axis register both port=value_in
#pragma HLS INTERFACE axis register both port=value_out

	static float buffer[MAX_BUFFER_SIZE];
	static int readBuffer = 0;
	static int writeBuffer = 10;

	static int delaycheck = 0;

	if(delaycheck != delay){
		writeBuffer = (MAX_BUFFER_SIZE + readBuffer + delay)%MAX_BUFFER_SIZE;
		delaycheck = delay;
	}

	float current_value;

	value_in >> current_value;

	current_value += scale*buffer[readBuffer];

	buffer[writeBuffer] = current_value;

	value_out << current_value;

	if(readBuffer < MAX_BUFFER_SIZE - 1)
		readBuffer++;
	else
		readBuffer = 0;

	if(writeBuffer < MAX_BUFFER_SIZE - 1)
		writeBuffer++;
	else
		writeBuffer = 0;


}
