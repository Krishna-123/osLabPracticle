// create thread and update the valuee of the same variable using mutex lock-unlock functions

#include<stdio.h>
#include<pthread.h>

int counter=0;
pthread_mutex_t flip_down = PTHREAD_MUTEX_INITIALIZER;


void *thread1(){
	int i;
	pthread_mutex_lock(&flip_down);

	for( i=0; i<4; i++){

		counter = counter + 1;
		printf("thread1  : %ld counter value is : %d\n",pthread_self(),counter);
		sleep(1);

	}
	//pthread_mutex_unlock(&flip_down);
}

void *thread2(){
	int i;
	//pthread_mutex_lock(&flip_down);

	for( i=1; i<4; i++){

		counter = counter + 1;
		printf("thread2  : %ld counter value is : %d\n",pthread_self(),counter);
		sleep(1);

	}
	pthread_mutex_unlock(&flip_down);

}

int main(){

	pthread_t th1,th2;
	pthread_mutex_init(&flip_down, NULL);
	pthread_mutex_lock(&flip_down);
	pthread_create(&th1, NULL, thread1, NULL);
	pthread_create(&th2, NULL, thread2, NULL);

	pthread_mutex_destroy(&flip_down);
	pthread_exit(NULL);
}