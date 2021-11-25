#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>

int main(void){
	int pid = fork();
	int status;
	
	if (pid==0){
		char *cmd = "ls";
		char *argv[3] = {cmd, "-la", NULL};
		execvp(cmd, argv);
	}
	//после execvp код выполняться не будет, т к адресное пространство переходит в новый процесс, где программный код начнет выполняться с функции main команды ls
	//родительский ждет завершения дочернего
	wait(&status);
	return 0;
}
