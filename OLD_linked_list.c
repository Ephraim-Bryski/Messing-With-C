#include <stdio.h>
#include <stdlib.h>
#include "print_array.h"


// LINKED LISTS :D

int* find_previous_address(int* start_address, int* desired_address){

    int * previous_address = start_address; // 10
    int * next_address;


    while(1){

        int* address_to_next_address = previous_address+1; // 10 --> 11
        int* next_address = (int*) *address_to_next_address; // gets the value at 11 (20) and casts it to a pointer

        if (next_address == desired_address){
            return previous_address;
        }

        previous_address = next_address; // now the previous one is 20

    }
}


int get_length(int* start_address){

    //TODO basically duplicate of find_end

    int * previous_address = start_address; // 10
    int * next_address;

    int count = 0;

    while(1){

        count++;

        int* address_to_next_address = previous_address+1; // 10 --> 11
        int* next_address = (int*) *address_to_next_address; // gets the value at 11 (20) and casts it to a pointer

        if (next_address == 0){
            return count;
        }

        previous_address = next_address; // now the previous one is 20

    }
}




int* find_end(int* start_address){
    return find_previous_address(start_address, 0);
}



void assign_value(int *linked_list, int index, int value){

    //int* past_address = find_previous_address(linked_list);
}

void print_linked_list(int* list){

    int* address = list;

    int i = 0;
    while (1){
        i++;
        int* address_to_next_address = address+1;

        int value = *address;
        int* next_address = (int*) *address_to_next_address;

        printf("\n");

        printf("%d: %d\n",address, value);
        printf("%d: %d\n",address_to_next_address, next_address);


        if (next_address == 0){
            return;
        }

        address = next_address;

    }
}

void push(int *linked_list,int value){
    int* last_address = find_end(linked_list);
    int* new_element = malloc(2);
    new_element[0] = value;
    new_element[1] = 0;
    int * next_address = last_address+1;  // gets the one that's currently 0
    *next_address = (int) new_element;
}

void pop(int *linked_list){
    //TODO basically doing the same thing traversing the list
    int* last_address = find_end(linked_list);

    int* second_to_last_address = find_previous_address(linked_list, last_address);

    int* address_to_last_address = second_to_last_address+1;

    *address_to_last_address = 0;


}


int* create_linked_list(int* values, int length){

    int* linked_list = malloc(2);

    // same code as in push, but you need a 0 so it can find the end of the list
    linked_list[0] = values[0];
    linked_list[1] = 0;


    for (int i=1;i<length;i++){
        push(linked_list, values[i]);
    }

    return linked_list;

}

int main(){

    int values[] = {9,23,41,5};

    int* linked_list = create_linked_list(values, sizeof(values)/sizeof(values[0]));

    push(linked_list, 100);

    print_linked_list(linked_list);

    

    pop(linked_list);
    pop(linked_list);


    printf("\nAFTER\n");
    print_linked_list(linked_list);
}