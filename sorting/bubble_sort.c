#include "arrays.h"


void interweave(int* arr, int lower, int upper){

    if (upper - lower <= 1){
        return;
    }

    int split = (lower+upper)/2;

    interweave(arr,lower,split);
    interweave(arr,split,upper);


    for (int start_i=split; start_i<upper;start_i++){
        for (int i=start_i;i>lower;i--){

            int val1 = arr[i-1];
            int val2 = arr[i];

            if (val1<val2){
                break;
            }

            arr[i-1] = val2;
            arr[i] = val1;
        }
   }
}


void bubble_sort(int* arr, int n_elements){
    interweave(arr,0,n_elements);
}

int main(){

    int values[] = {20,31,32,2,5,9,1,23,44,-5};

    int n_elements = sizeof(values)/sizeof(values[0]);

    bubble_sort(values, n_elements);


    for (int i=0;i<n_elements;i++){
        printf("%d,",values[i]);
    }
    
}



















