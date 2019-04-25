#ifndef __ECHO_INCLUDED__
#define __ECHO_INCLUDED__
#include <hls_stream.h>

#define MAX_BUFFER_SIZE 4800

void Echo(

	hls::stream<float> & value_in,
	hls::stream<float> & value_out,

	int delay,
	float scale
	
);


#endif
