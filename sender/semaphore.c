#include<stdio.h>
#include<pthread.h>
#include<semaphore.h>

sem_t s ;
int counter=0;

void *thread1(){
	
	sem_wait(&s);
	for (int i = 0; i < 4; ++i)
	{
		counter = counter + 1;
		printf("thread1  : %ld value of counter %d \n",pthread_self(),counter);
		sleep(1);
	}

	sem_post(&s);
}

void *thread2(){

	//sem_wait(&s);
	for (int i = 0; i < 4; ++i)
	{
		counter = counter + 1;
		printf("thread2  : %ld value of counter %d \n",pthread_self(),counter);
		sleep(1);
	}

	sem_post(&s);

}

int main()
{
	pthread_t th1,th2;
	sem_init(&s,0,0);

	pthread_create(&th1,NULL,thread1,NULL);
	pthread_create(&th2,NULL,thread2,NULL);

	pthread_exit(NULL);

	return 0;
}
