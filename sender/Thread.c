#include <stdio.h>
#include <pthread.h>

#define NUM 2

pthread_t t [ NUM ] ;

static void *thread2(){
	
		for (int i = 20; i < 30; ++i)
	{
		printf("%d\n",i );
		sleep(1);
	}
}

static void * thread1()
{

	

	for (int i = 0; i < 20; ++i)
	{
		printf("%d\n",i );
		sleep(1);
	}
}

int main()
{
	pthread_create(&t[1], NULL, thread2, NULL);
	pthread_create(&t[0], NULL, thread1, NULL);

	pthread_exit(NULL);


	return 1;
}
