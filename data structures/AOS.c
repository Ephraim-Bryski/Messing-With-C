
#include <stdio.h>

struct test {
    char a;
    char b;
    char c;
};





int AOS() {


    struct test my_struct;
    printf("\n\nstruct size: %d\n",sizeof(my_struct));


    struct test arr[4];
 
    
    arr[0].a = 'h';
    arr[0].b = 'u';
    arr[0].c = 'l';
    arr[1].a = 'l';
    arr[1].b = 'o';
    arr[1].c = ' ';
    arr[2].a = 'w';
    arr[2].b = 'o';
    arr[2].c = 'r';
    arr[3].a = 'l';
    arr[3].b = 'd';
    arr[3].c = '!';

    int arr_size = sizeof(arr);

    printf("array size: %d\n\n",arr_size);

    int base_location = (int) arr;

    for (int i=0;i<arr_size;i++){
        
        int location = base_location+i;

        char character = *(char*) location;

        printf("%c",character);


    }

    printf("\n\n");

    return 0;
}

