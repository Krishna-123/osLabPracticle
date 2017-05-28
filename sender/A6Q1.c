#include<stdio.h>
#include<sys/types.h>
#include<unistd.h>

int main(){
	pid_t pid;
	int fds[2];

	pipe(fds);
	int var,i;

	pid=fork();

	if (pid==0)
	{
		//child process

		sleep(5);
		read(fds[0],&var,sizeof(var));
		printf("%d\n",var );
	}

	else if (pid>0)
	{
		//parent processs
		printf("enter the value of number \n");
		scanf("%d",&var);

		close(fds[0]);
		write(fds[1],&var,sizeof(var));
	}

	else {
		//error
		printf("%s\n","error" );
	}

}