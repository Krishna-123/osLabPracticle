// signals

#include<stdio.h>
#include<unistd.h>
#include<sys/types.h>
#include<signal.h>
#include<stdlib.h>

void sighub(){

	printf("%s\n","sighub  signal is received " );
}

void sigint(){

	printf("%s\n","sigint  signal is received " );
}

void sigquit(){

printf("%s\n","sigquit  signal is received " );
exit(0);
}


int main()
{
	pid_t pid;
	pid=fork();

	if(pid==0){
		//child
	
		signal(SIGHUP, sighub);
		signal(SIGINT, sigint);
		signal(SIGQUIT, sigquit);
				for( ; ;);		

	}
	else if(pid>0){

		//parent  
		printf("%s\n","sending Sighub signal" );
		kill(pid, SIGHUP);
		sleep(2);
		
		printf("%s\n","sending SigINT signal" );
		kill(pid, SIGINT);
		sleep(2);
		

		printf("%s\n","sending Sigquit signal" );
		kill(pid, SIGQUIT);
		sleep(2);


	}
	else{

		printf("%s\n","error" );
	}



	return 0;
}