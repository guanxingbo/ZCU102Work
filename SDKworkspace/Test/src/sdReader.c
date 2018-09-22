/*
 * Copyright (c) 2012 Xilinx, Inc.  All rights reserved.
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 *
 */

#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include "camReader.h"
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>


int OpenFile(char* filename) {
	int fileopen = -1;
	if (filename != NULL && strcmp(filename, "")) {
		fileopen = open(filename, O_RDONLY);
		if (-1 == fileopen)
			perror("Error:"), exit(-1);
		puts("File opened successfully");
	} else {
		perror("Error: invalid file name");
	}
	return fileopen;
}

int ReadFile(int file, int *len, char **data) {
	int step = 1024 * 10;

	if (file == -1)
		return -1;

	int i = 0;
	while (1) {
		*data = realloc(*data, step * (i + 1));
		if (data == NULL) {
			close(file);
			return -1;
		}

		int cur_len = read(file, *data + (step * i), step);
		if (cur_len == 0)
			break;
		else
			*len += cur_len;

		i++;
	}

	close(file);

	return 0;
}

int sdReader(char* filename){
	FILE* file;
	if (filename != NULL && strcmp(filename, "")) {
		file=fopen(filename,"r");
		if(file!=NULL){
			puts("File opened successfully");
		}else{
			return -1;
		}
	}else{
		perror("Error: invalid file name");
		return -1;
	}
	return 0;
}

//int main() {
//	//====file opening====
//    int fd = open("adb.txt",O_RDWR);
//    if( -1 == fd )
//        perror("Error:"),exit(-1);
//    puts("File opened successfully");
//    printf("fd = %d\n",fd);  	//descriptor

//    //data
//    int ID= 999;
//    char *name = "World of wonder";
//    double salary = 5.000;
//    //==file creation===
//    int fd2 = open("b.txt",O_CREAT|O_RDWR,0666);
////    printf("fd2 = %d\n",fd2);
//    ssize_t res = write(fd2,&ID,sizeof(int));
//    if(res <= 0){
//    	puts("I/O error");
//    }
//    write(fd2,name,strlen(name));
//    write(fd2,&salary,sizeof(double));

//
//    int len = 0;
//    char *pdata = NULL;
//    char *pname = "a.txt";
////    if ( argc == 2 )
////    pname = argv[1];
//
//    int nret = ReadFile( OpenFile(pname), &len, &pdata );
//    if ( nret != 0 )
//    {
//        printf( "read file[%s] fail\n", pname );
//    }
//    printf( "file %s :len=%d;\n%s\n", pname, len, pdata );
//    if ( pdata != NULL )
//    {
//        free( pdata);
//        pdata = NULL;
//    }
//	readCam();
//	return 0;
//}
