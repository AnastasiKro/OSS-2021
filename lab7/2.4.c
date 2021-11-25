#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
//#include <sys/types>
int main(void){
	int pid; int i=0;
	int P = getpid();
	///=for (i=0; i<10; i++){
	//pid[i] = fork();
	while (i>-1){
		if (P==getpid()){
			pid = fork();
			if (pid == 0){
				//printf("%d\n", i);//This is a message from the child process\n my pid is %d\n parent pid is %d\n", getpid(), getppid());
				//sleep(5);
			}
			else if (pid<0){
				printf("failed %d\n", i);
			i+=1;
			}
		}
	}
	if (P==getpid()){
		//parent process gets childs pid, it must be >0
		printf("This is a message from the parent process\n");
		//sleep(5);
	}
	return 0;
}
