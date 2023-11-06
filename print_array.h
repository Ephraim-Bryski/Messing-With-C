#include <stdio.h>

void print_array(int array[], int array_size){
    char element_string[100]; // shouldn't be more than 100 digits O:
    for (int i=0;i<array_size;i++){
        if (i==0){
            printf("[");
        }else{
            printf(",");
        }
        int element = array[i];
        sprintf(element_string,"%d ",element);
        int j = 0;
        while(1){
            char character = element_string[j];
            if (character == ' '){    // means it got to the space
                break;
            }
            printf("%c",character);
            j+=1;
        }
    }
    printf("]\n");
}