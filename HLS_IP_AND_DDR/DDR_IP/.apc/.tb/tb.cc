
#include <stdio.h>
#include <string.h>
#include “header.h”

int main(){
	int start_signal = 10;
	int hls_check = 20;
	int int num = 30;
	int unsigned long long saMaster = 20;

	ddr_hls_test(&start_signal, &hls_check, &num, &saMaster);

	return 0;
}



