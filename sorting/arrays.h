#include <stdio.h>
#include <stdlib.h>


struct array{
    int length;
    int* items;
};


struct array* create_array(int* pointer, int size){
    // pointer is a static array instead of dynamic


    struct array* new_array = (struct array*) malloc(sizeof(struct array));

    int n_elements = size/sizeof(pointer[0]);

    new_array -> length = n_elements;


    int* items = (int*) malloc(size);

    for (int i=0;i<n_elements;i++){
        items[i] = pointer[i];
    }

    new_array -> items = items;

    return new_array;

}

void print_array(struct array* arr){

    int arr_length = arr -> length;
    int* items = arr -> items;

    printf("[");

    
    for (int i=0;i<arr_length;i++){
        printf("%d,",items[i]);
    }

    printf("]\n");

}


void remove_element(struct array* arr, int index){
    int n_elements = arr -> length;
    int* items = arr -> items;


    for (int i=index;i<n_elements;i++){
        items[i] = items[i+1];
    }

    arr -> length = n_elements-1;
}


void insert_element(struct array* arr, int index, int number){

    int n_elements = arr -> length;
    int* items = arr -> items;

    int size_new = (n_elements+1)*sizeof(int);

    

    int* new_items = (int*) realloc(items, size_new);

    // not sure if this is correct
    // idea is the reallocation may move the data to somewhere else, OR it could keep it put 
    // if it keeps it put, then you cant free item cause you'd also be freeing new item
    // but if it moves it (so item and newitem are different) you can free item
    if (items != new_items){
        free(items);
    }

    for (int i=n_elements;i>index;i--){
        new_items[i] = items[i-1];
    }

    new_items[index] = number;

    arr -> length = n_elements+1;
    arr -> items = new_items;


}


int example(){

    int values[] = {12,20,50,31};

    struct array* my_array = create_array(values, sizeof(values));

    print_array(my_array);

    insert_element(my_array, 3, 99);
    
    print_array(my_array);

    remove_element(my_array,3);

    print_array(my_array);

    return 0;


}
