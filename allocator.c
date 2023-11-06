#include <stdlib.h>
#include <stdio.h>

/*

apparently allocators typically use linked lists, with each element having info on its size, and pointing to the next

here i instead have all of the information on location separate from the data

also, it's all done inside a single malloc (no OS requests or anything fancy)


*/


struct bk_block {
    int* start;
    int* end;
};
typedef struct bk_block bk_block;

/*

size: n_elemnts_limit*sizeof(int)                                   
<------------------------------- DATA ----------------------------->

size: n_allocate_limit*sizeof(bk_block)
<-- BOOKKEEPING -->

size: sizeof(int)
<-NUM OF ALLOCATIONS->

*/

int* HEAP_BASE;
int N_ELEMENTS_LIMIT = 100;
int N_ALLOCATE_LIMIT = 10; 


bk_block* BK_LOCATION(){
    return (bk_block*) (HEAP_BASE + N_ELEMENTS_LIMIT);
}

int* COUNT_LOCATION(){
    return (int*) (BK_LOCATION() + N_ALLOCATE_LIMIT);
}


int* my_malloc(int* data, int n_items){

    int n_allocations = *(COUNT_LOCATION());

    if (n_allocations == N_ALLOCATE_LIMIT){
        printf("cant make any more allocations :(\n");
        return NULL;
    }

    // search for a space:

    int* selected_location = NULL;

    int selected_bk_idx;

    for (int i=0;i<=n_allocations;i++){

        int* space_start;
        if (i == 0){
            space_start = HEAP_BASE;
        }else{
            space_start = BK_LOCATION()[i-1].end;
        }

        int* space_end;
        if (i == n_allocations){
            space_end = (int*) BK_LOCATION();
        }else{
            space_end = BK_LOCATION()[i].start;
        };
        

        // printf("%d: %d to %d\n",i,(int)space_start,(int)space_end);

        if (space_end - space_start >= n_items){
            selected_location = space_start;
            selected_bk_idx = i;
            break;
        }
    }



    if(!selected_location){
        printf("no space :O\n");
        return NULL;
    }

    
    // write the data:
    for (int i=0;i<n_items;i++){
        selected_location[i] = data[i];
    }




    // insert the bookkeeping block, shifting the blocks after it one to the right:

    bk_block new_block;

    new_block.start = selected_location;
    new_block.end = selected_location + n_items;

    for (int i=n_allocations; i>selected_bk_idx; i--){
        BK_LOCATION()[i] = BK_LOCATION()[i-1];
    }

    BK_LOCATION()[selected_bk_idx] = new_block;

    // increment the number of allocations

    (*(COUNT_LOCATION())) ++;

    printf("allocated :D\n");

    return selected_location;




}


void my_free(int* ptr_to_free){

    int found_ptr = 0;

    // allocate had to search and shift as two loops since it would overwrite if shifting left to right
    // but free doesnt have this issue so i can do it one run :)

    for (int i=0;i<*(COUNT_LOCATION());i++){
    

        bk_block block = BK_LOCATION()[i];

        if (found_ptr){
            BK_LOCATION()[i-1] = block;
        }

        if (block.start == ptr_to_free){
            found_ptr = 1;
        }
    }

    if (found_ptr){
        (*(COUNT_LOCATION()))--;
        return;
    }else{
        printf("doesnt point to any data ):<");
        return;
    }



}



void print_allocations(){

    printf("\nnumber of allocations: %d\n",*(COUNT_LOCATION()));
    
    for (int i=0;i<*(COUNT_LOCATION());i++){

        bk_block block = BK_LOCATION()[i];



        int relative_start = (int)(block.start-HEAP_BASE);
        int relative_end = (int)(block.end-HEAP_BASE);

        printf("%d to %d: [", relative_start, relative_end);

        for (int* location = block.start; location<block.end; location++){
            printf("%d,",*location);
        }
        printf("]\n");
    }


}


int main(){

    //! just some big number for now, would want to actually compute how much space is needed
    HEAP_BASE = malloc(10000);

    int arr1[] = {4,5,7,9};

    int* ptr = my_malloc(arr1, sizeof(arr1)/sizeof(int));



    int arr2[] = {13, 17, 20};

    my_malloc(arr2, sizeof(arr2)/sizeof(int));

    my_free(ptr);


    int arr3[] = {40, 100, 2023,400};

    my_malloc(arr3, sizeof(arr3)/sizeof(int));




    print_allocations();


}