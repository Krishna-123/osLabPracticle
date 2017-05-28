// stop and continue of the child process

#include<stdio.h>
#include<sys/types.h>
#include<unistd.h>
#include<signal.h>

int main(){
	int i;
	pid_t pid;
	pid=fork();

	if(pid==0){
		//child

		for(i=0;i<=10;i++){
			printf("%d\n",i);
			sleep(1);

		}
	}

	else if(pid >  0){
		//parrent
		sleep(5);
		printf("%s\n","signal stop is send" );
		kill(pid,SIGSTOP);
		sleep(5);

		printf("%s\n","signal continue is send" );
		kill(pid,SIGCONT);
		sleep(7);
	}

	else{
		printf("error");
	}


}
