#include <time.h>
#include <stdio.h>
int main(void)
{
        time_t ltime;
        ltime=time(NULL);
        printf("Hi from C: %s",asctime( localtime(&ltime) ) );
        system("python3 ./exercise.py");
        return 0;
}
