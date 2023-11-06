#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>

int main(){

    for (int exp=1;exp<30;exp++){


        long long int n_times = pow(10,exp);

        double start = clock();

        for (int i=0;i<n_times;i++){
            int b = i+1;
        }

        double end = clock();

        double time = (end-start)/n_times*pow(10,6);

        printf("%d: %f\n", exp, time);

    }


}