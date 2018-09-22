/*
 * system.c
 *
 *  Created on: 3 Aug 2018
 *      Author: guan
 */
#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

#include "camReader.h"
#include "sdReader.h"

char* conftemplate="/<pathofsdcard>\n/<pathofcamera>";
void *readcam(void *arg);

int checksetting(char* sdpath, char* campath){
	FILE* configfile;
	int length;
	configfile = fopen("setting.txt","rt+");
	if(configfile!=NULL){
		length=fscanf(configfile,"%s\n%s",sdpath,campath);
//		printf("load successfully, it's length is %d\n", length);
//		printf("sdpath is %s, campath is %s\n", sdpath,campath);
		return 1;
	}else{
		printf("Configure file does not exist, creating one...");
		configfile = fopen("setting.txt","wt+");
		fprintf(configfile,"%s", conftemplate);
		printf("Please modify configfile and restart");
		return 0;
	}
	return 0;
}

void *readsd(void *arg){
	char * path = (char *)arg;
	printf("read sdcard, path is %s\n", path);
	sdReader(path);
	pthread_exit(pthread_self);
}

void *readcam(void *arg){
	char * path = (char *)arg;
	printf("read camera, path is %s\n", path);

	readCam(path,1280,720);
	pthread_exit(pthread_self);
}

int main(int argc, char * argv[]){
	char sdpath[60], campath[60];
	if(argc==1){
		if(checksetting(sdpath,campath)){
			printf("sdpath is %s, campath is %s\n", sdpath,campath);

			pthread_t thread1,thread2;
			int ret1;
			ret1 = pthread_create(&thread1,NULL,readcam,(void *)campath);
			int ret2 = pthread_create(&thread2,NULL,readsd,(void *)sdpath);
			if(ret1!=0||ret2!=0){
				fprintf(stderr,"failed to create thread\n");
				return -1;
			}
//			sleep(1);
//			ret=pthread_detach(thread);
			int tmp=pthread_join(thread1,NULL);
			int tmp2=pthread_join(thread2,NULL);

			printf("\nthread return value is %d",tmp);
		}else{
			return 0;
		}
	}else{
		printf("running argument not supported");
		printf("%s\n",argv[0]);
	}
	return 0;
}

