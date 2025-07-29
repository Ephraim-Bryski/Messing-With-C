#include <stdio.h>
#include <string.h>
#include <stdlib.h>

struct linked_item {
    int value;
    struct linked_item* next;
};

struct linked_list {
    struct linked_item* head ;
};


void pop(struct linked_list* list){
    
    struct linked_item* item = list -> head;

    if (item == NULL){
        printf("cant pop from empty array");
        return;
    }

    if (item -> next == NULL){

        free(list -> head);
        list -> head = NULL;
        
        return;
    }

    while (item -> next -> next != NULL){
        item = item -> next;
    }

    free(item -> next);
    item -> next = NULL;

}

void push(struct linked_list* list, int value){


    struct linked_item* new_item = malloc(sizeof(struct linked_item));
    new_item -> value = value;
    new_item -> next = NULL;


    struct linked_item* item = list -> head;


    if (item == NULL){
        list -> head = new_item;
        return;
    }

    while (item -> next != NULL){
        item = item -> next;
    }
    item -> next = new_item;

    // struct linked_item* new_item = malloclist(4);

}






struct linked_list create_with_pushes(int* values, int size){
    
    int n_elements = size/sizeof(values[0]);

    struct linked_list list;

    list.head = NULL;

    for (int i=0;i<n_elements;i++){
        push(&list, values[i]);
    }

    return list;

}


struct linked_item* add_items_forward(int* values, int n_elements, int idx){
    
    if (idx == n_elements){return NULL;}

    struct linked_item* item = malloc(sizeof(struct linked_item));

    struct linked_item* new_item = add_items_forward(values, n_elements, idx+1);
    
    item -> value = values[idx];
    item -> next = new_item;

    return item;
    
}

struct linked_list create_forward(int* values, int size){

    int n_elements = size/sizeof(values[0]);
    struct linked_list list;    
    struct linked_item* boop = add_items_forward(values, n_elements, 0);
    printf("VALUE: %d\n",boop -> value);
    list.head = boop;
    return list;
}


struct linked_list create_contiguous(int* values, int size){

    int element_size = sizeof(values[0]);
    int n_elements = size/element_size;

    int item_size = sizeof(struct linked_item);

    struct linked_item* items = malloc(n_elements*item_size);

    for (int i=0; i<n_elements; i++){
        (&items[i]) -> next = &items[i+1];
        (&items[i]) -> value = values[i];
    }

    (&items[n_elements-1]) -> next = NULL;

    struct linked_list list;
    list.head = &items[0];

    return list;

}


struct linked_list* create_best(int* values, int size){

    int n_elements = size/sizeof(values[0]);
    
    struct linked_list* list = malloc(sizeof(struct linked_list));    


    struct linked_item* item = NULL;

    for (int i=0; i<n_elements; i++){

        struct linked_item* new_item = malloc(sizeof(struct linked_item));

        new_item -> value = values[n_elements-i-1];
        new_item -> next = item;

        item = new_item;
    }


    list -> head = item;

    return list;
   
}


void print_list(struct linked_list list){

    struct linked_item* item = list.head;

    if (item == NULL){
        printf("[]\n");
        return;
    }

    printf("[");

    while (item -> next != NULL){
        printf("%d,", item -> value);
        item = item -> next;
    }

    printf("%d]\n",item -> value);
}

void show_list_addressing(struct linked_list list){


    struct linked_item* item = list.head;

    int count = 0;

    while (item != NULL){

        printf("Address: %d\n", (int) item);
        printf("Value: %d\n", item -> value);
        printf("Next: %d\n", (int) item -> next);
        printf("\n");

        item = item -> next;

        count ++;

        if (count>7){
            return;
        }
    }


}



void remove_element(struct linked_list* list, struct linked_item* target){
    struct linked_item** item_ref = &(list -> head);
    while (*item_ref != target){
        item_ref = &((*item_ref) -> next);
    }
    *item_ref = (*item_ref) -> next;
}


void insert_element(struct linked_list* list, int new_value, int index){


    struct linked_item* new_item = malloc(sizeof(struct linked_item));
    new_item -> value = new_value;

    struct linked_item** prev_item = &(list -> head);

    for (int i=0;i<index;i++){
        prev_item = &((*prev_item) -> next);
    }

    new_item -> next = (*prev_item);

    *prev_item = new_item;

}

int main(){

    int values[] = {3,5,7,9,11,13};        

    struct linked_list my_list = create_contiguous(values, sizeof(values));

    struct linked_item* target = my_list.head; 

    print_list(my_list);

    insert_element(&my_list, 2, 1);



    print_list(my_list);
    return 0;
    push(&my_list, 19);
    print_list(my_list);
    pop(&my_list);
    print_list(my_list);
    pop(&my_list);
    print_list(my_list);
    pop(&my_list);
    print_list(my_list);
    push(&my_list, 40);
    print_list(my_list);
    return 0;
}











