#include <stdio.h>
#include <stdlib.h>


struct bin_tree {
    int value;
    struct bin_tree* left;
    struct bin_tree* right;
};




struct bin_tree* create_tree(int value){

    struct bin_tree* tree = malloc(sizeof(struct bin_tree));
    tree -> value = value;
    tree -> left = NULL;
    tree -> right = NULL;

    return tree;
}

void drop_value(struct bin_tree** tree, int value){

    if (*tree == NULL){
        *tree = create_tree(value);
        return;
    }

    struct bin_tree** child;
    if (value < (*tree) -> value){
        child = &((*tree) -> left);
    }else{
        child = &((*tree) -> right);
    }

    drop_value(child, value);
}



struct bin_tree* create_sort_tree(int* values, int n_elements){


    printf("%d\n",n_elements);

    struct bin_tree* top = create_tree(values[0]);

    for (int i=1;i<n_elements;i++){

        drop_value(&top, values[i]);

    }

    return top;


}

void collapse_sort_tree(struct bin_tree* tree, int* sorted, int* count){

    if (tree == NULL){
        return;
    }

    collapse_sort_tree(tree -> left, sorted, count);

    sorted[*count] = tree -> value;
    *count = (*count) + 1;

    collapse_sort_tree(tree -> right, sorted, count);

}


int* sort(int* values, int size){

    int n_elements = size/sizeof(values[0]);

    printf("%d\n",n_elements);

    struct bin_tree* sort_tree = create_sort_tree(values,n_elements);

    int* sorted = calloc(n_elements, sizeof(int));

    int count = 0;
    collapse_sort_tree(sort_tree, sorted, &count);

    return sorted;


}


int main(){


    int values[] = {20,3,11,9,1,4,99,-10,1};

    int* sorted = sort(values,sizeof(values));

    int n_elements = sizeof(values)/4;

    for (int i=0;i<n_elements;i++){
        printf("%d,",sorted[i]);
    }

    return 0;


}




