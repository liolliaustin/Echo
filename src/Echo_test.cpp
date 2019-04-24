#include "Echo.h"
#include <iostream>
#include <hls_stream.h>

using namespace std;

int main() {
	
	hls::stream<float> value_in("value_in");
	hls::stream<float> value_out("value_out");


	float value = 0.03f;

	for(int j=0; j<350; j++){

		value_in << value;
		value += 0.005f;
	}




	int i = 3000;
	while (i --> 0) {

		Echo(
			value_in,
			value_out,

			300,
			0.5
		);

		if(i==2000){
			value_in << 1.0f;
		}

		else{
			value_in << 0.0f;
		}



		float tmp;
		value_out >> tmp;
		cout << tmp << "\t";
	}
}
