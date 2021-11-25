#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

int main(void){
	int pid[10]; int i=0;
	int P = getpid();
	///=for (i=0; i<10; i++){
	pid[i] = fork();
	while (i<10){
		if (P==getpid()){
			pid[i] = fork();
			if (pid[i] == 0){
				printf("This is a message from the child process\n my pid is %d\n parent pid is %d\n", getpid(), getppid());
				sleep(5);
			}
			i+=1;
		}
	}
	if (P==getpid()){
		//parent process gets childs pid, it must be >0
		printf("This is a message from the parent process\n");
		sleep(5);
	}
	return 0;
}
