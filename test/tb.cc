
#include <stdio.h>
#include <string.h>
#include "/home/guan/Xilinx/Project/test/header.h"

int main(){
	int start_signal = 10;
	int hls_check = 20;
	int num = 30;
	int unsigned long long saMaster[100000];

	ddr_hls_test(&start_signal, &hls_check, &num, saMaster);

	return 0;
}



