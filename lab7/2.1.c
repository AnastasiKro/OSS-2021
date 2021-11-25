#include <stdio.h>
#include <unistd.h>
//#include <sys/types>

int main(void){
	int pid = fork();
	if (pid == 0){
		printf("This is a message from the child process\n my pid is %d\n parent pid is %d\n", getpid(), getppid());
	}
	else if (pid>0){
		//parent process gets childs pid, it must be >0
		printf("This is a message from the parent process\n");
	}
	return 0;
}
