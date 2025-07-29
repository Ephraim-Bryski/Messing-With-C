#include <stdio.h>
#include <stdlib.h>
#include "print_array.h"

int* copy_array(int* array, int size){

    int size_per_elem = sizeof(array[0]);

    

    int n_elems = size/size_per_elem;

    printf("size: %d\n", size_per_elem);
    printf("n elems: %d\n", n_elems);

    int* new_array = malloc(size);

    for (int i=0;i<n_elems;i++){
        new_array[i] = array[i];
    }

    return new_array;
}


int main(){



}