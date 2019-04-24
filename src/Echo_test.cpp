#include "Echo.h"
#include <iostream>
#include <hls_stream.h>

using namespace std;

int main() {
	
	hls::stream<int> change("change");
	hls::stream<float> value_in("value_in");
	hls::stream<float> value_out("value_out");

	change << 0;

	float value = 0.03f;

	for(int j=0; j<350; j++){

		value_in << value;
		value += 0.005f;
	}




	int i = 3000;
	while (i --> 0) {

		Echo(
			change,
			value_in,
			value_out,

			300,
			1
		);

		if(i==1500){
			value_in << 1.0f;
			change << 1;
		}

		else{
			value_in << 0.0f;
			change << 0;
		}



		float tmp;
		value_out >> tmp;
		cout << tmp << "\t";
	}
}
