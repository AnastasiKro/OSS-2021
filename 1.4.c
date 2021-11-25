#include <stdio.h>
#include <stdlib.h>

extern char **environ;
int main(int argc,char  *argv[]){
	char **p;
	int k = 0;
	//printf("%s\n", argv[1]);
	int a = atoi(argv[1]);
	for (p=environ; *p !=NULL; p++){
		if (k<a)
			printf("%s\n", *p);
		else
			return 0;
		k++;
	}
	return 0;
}
/*#!/bin/bash
  env | wc -l
 */


