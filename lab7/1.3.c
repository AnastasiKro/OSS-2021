
#include <stdio.h>

extern char **environ;
int main(int argc,char  *argv[]){
	char **p;
	int k = 0;
	for (p=environ; *p !=NULL; p++){
		if (k<10)
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


