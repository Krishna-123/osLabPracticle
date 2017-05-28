#include<stdio.h>
#include<unistd.h>
#include<sys/types.h>
#include<string.h>

int main(){
	pid_t pid;

	int fds[2];
	pipe(fds);
	char str[20];

	int n=0,a=0,sp=0;

	pid =fork();

	if (pid==0)
	{	
		// child process
		sleep(5);

		read(fds[0],str,20);
		for (int i = 0; i < strlen(str); ++i)
		{
			if ( str[i]>= 48 && str[i]<= 57 )
			{
				n++;
			}

			else if ( ( str[i]>=65 && str[i]<=90 ) || ( str[i]>=97 && str[i]<=122 ) )
			{
				a++;
			}

			else{

				sp++;
			}
		}
		puts(str);
		printf("%s %d %s %d %s %d\n","number of alphabets are : ",a,"number of numeric values are : ",n,"number of special characters are : ",sp );

	}
	else if (pid > 0)
	{
		// parent process
		printf("%s\n","enter  the string" );
		scanf("%s",str);

		close(fds[0]);
		write(fds[1],str,20);

	}

	else{
		printf("%s\n","error" );
	}

}
