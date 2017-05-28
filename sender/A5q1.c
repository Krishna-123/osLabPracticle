#include<stdio.h>
#include<unistd.h>
#include<sys/types.h>

int main(){
	pid_t pid, pid1 ;
	pid=fork();
	int a=10;

	if(pid == 0){


			printf("..child is created..\n");
			printf("process id of this child process is %d\n",getpid());
			printf("process id of parents processs is %d\n",getppid());
			printf("process id of its child is %d\n",pid);
			a=a+10;
			printf("value is %d and  address is %d \n",a,&a );
	}

	else{
			printf("parent process\n");
			printf("process id of this process is %d\n",getpid());
			printf("process id of its parent process is %d\n",getppid());
			printf("process id of its child  is %d\n",pid);
			printf("value is %d and  address is %d \n",a,&a );		x

	}

	/*pid1=fork();

	if(pid1 == 0){


			printf("..child is created..\n");
			printf("process id of this child process is %d\n",getpid());
			printf("process id of parents processs is %d\n",getppid());
			printf("process id of its child is %d\n",pid1);
	}

	else{
			printf("parent process\n");
			printf("process id of this process is %d\n",getpid());
			printf("process id of its parent process is %d\n",getppid());
			printf("process id of its child  is %d\n",pid1);
			

	}
*/

}