// create the threads such that both th thread can update the same variable
/// using pthread only

# include <stdio.h>
#include<pthread.h>

int counter=0;

void *thread1(){
 	int i;
	
	for(i=0;i<4;i++){

		counter = counter + i;
		printf("thread1  : %ld counter %d\n",pthread_self(),counter );
		sleep(1);
	  }	
	}

void *thread2(){
	int i;

	for (int i = 1; i < 4; ++i)
	{
		/* code */

		counter = counter + i;
		printf("thread2  : %ld counter %d\n",pthread_self(),counter );
		sleep(1);
	}
}

int main(){
pthread_t th1,th2;

pthread_create(&th1,NULL,thread1,NULL);
pthread_create(&th2,NULL,thread2,NULL);

pthread_exit(NULL);

}