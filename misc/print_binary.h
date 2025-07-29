#include <stdio.h>
#include <stdlib.h>
#include <math.h>




int get_bit(int number, int place){
    int shifted_one = 1<<place;
    int shifted_bit = shifted_one&number;
    int bit = shifted_bit>>place;
    return bit;
}

void print_binary(int number, int n_places){

    // set n_places to 0 to print everything
    // TODO need to figure out how null or nan or infinity work in c

    int n_bytes = sizeof(number);
    int n_bits = n_bytes*8;
    int started = 0;
    int has_defined_start = n_places!=0;// n_places!=NULL;
    int print_bit;
    for (int i=0;i<n_bits;i++){
        int place = n_bits-i-1;
        int bit = get_bit(number, place);
        started = started|bit;

        if (has_defined_start){
            print_bit = place<n_places;
        }else{
            print_bit = started;
        }

        if (print_bit){
            printf("%d",bit);
        }
    }
    printf("\n");
}

int example(){

    int a = pow(2,31)-2;

    // char pointers are 1 byte so i can look at 1 byte at a time of a 4 byte integer :D

    unsigned char* ptr = (unsigned char*)&a;
    for (int i=3;i>=0;i--){
        unsigned char* shifted_ptr = ptr+i;
        printf("%p: ", shifted_ptr);
        print_binary(*shifted_ptr,8);
        
    
    }

    return 0;

}


void get_binary_of_floating_point(float a_float){

    float* pnt_to_float = &a_float;

    int* pnt_to_int = (int*) pnt_to_float;

    int a_int = *pnt_to_int;

    // absolute beautiful code :)
    if (a_float<10){
        printf("%d:    ",(int) a_float);
    }else{
        printf("%d:   ",(int) a_float);
    }
    
    print_binary(a_int,0);
}