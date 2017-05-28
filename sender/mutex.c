#include <stdio.h>
#include <pthread.h>

#define NUM 2

pthread_t t [ NUM];


pthread_mutex_t flip_done;

static void *thread2(){
	//pthread_mutex_unlock(&flip_done);
	
	for (int i =9; i < 15; ++i)
	{
		printf("%ld %d\n",pthread_self(), i);
		sleep(1);
	}
	//pthread_mutex_unlock(&flip_done);
}


static void * thread1()
{
	
pthread_mutex_lock(&flip_done);
	for (int i = 0; i < 8; ++i)
	{
	printf("%ld %d\n",pthread_self(), i);
		sleep(1);
	}

}

int main()
{
	pthread_mutex_init(&flip_done, NULL);
	pthread_mutex_lock(&flip_done);
	pthread_create(&t[1], NULL, thread2, NULL);
	pthread_create(&t[0], NULL, thread1, NULL);


	pthread_mutex_destroy(&flip_done);
	pthread_exit(NULL);


	return 1;
}
