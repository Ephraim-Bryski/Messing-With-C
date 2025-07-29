#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct {
    int n_dims;
    char** dim_names;
    int* size;
    float* data;
}tensor;


int get_n_elements(tensor* tensor){

    int n_dims = tensor -> n_dims;

    int n_elements = 1;
    for (int i=0; i<n_dims; i++){
        n_elements *= (tensor -> size)[i];
    }

    return n_elements;
}


tensor* create_tensor(int n_dims, char** dim_names, int* size){

    tensor* new_tensor = malloc(sizeof(tensor));

    new_tensor -> n_dims = n_dims;

    new_tensor -> dim_names = malloc(n_dims*sizeof(char*));

    new_tensor -> size = malloc(n_dims*sizeof(int));

    for (int i=0;i<n_dims;i++){
        (new_tensor -> dim_names)[i] = dim_names[i];
        (new_tensor -> size)[i] = size[i];
    }

    float* new_data = malloc(get_n_elements(new_tensor)*sizeof(float));

    new_tensor -> data = new_data;



    return new_tensor;

}

tensor* create_and_fill_tensor(int n_dims, char** dim_names, int* size, float* data){

    tensor* tensor = create_tensor(n_dims,dim_names,size);
    
    
    for (int i=0; i<get_n_elements(tensor); i++){
        (tensor -> data)[i] = data[i];
    }

    return tensor;

}


int get_flat_idx(tensor* tensor, char** location_dim_names, int* location){

    int n_dims = tensor -> n_dims;
    char** dim_names = tensor -> dim_names;


    int flat_idx = 0;
    int section_size = 1;

    for (int i=(n_dims-1); i>=0; i--){
        

        char* dim_name = dim_names[i];

        int location_idx;

        int found = 0;
        for (int j=0; j<n_dims; j++){
            if (!strcmp(location_dim_names[j], dim_name)){  // so a zero means they're equal for strcmp
                found = 1;
                location_idx = location[j];
                break;
            }
        }

        if (!found){
            printf("dimension %s not in location names", dim_name);
            return -1;
        }

        flat_idx += location_idx * section_size;
        
        section_size *= (tensor -> size)[i];

    }

    return flat_idx;

}


void get_slice(tensor* tensor, char** located_dims, int* location, int n_located_dims){





}


/*
void print_tensor(tensor* tensor, char* row_name, char* col_name, char** booop){

}
*/

int main(){

    int n_dims = 2;


    char** dim_names = malloc(n_dims*sizeof(char*));

    dim_names[0] = "first";
    dim_names[1] = "second";


    int size[] = {3,2};

    float data[] = {1,2,3,4,5,6};

    tensor* tensor = create_and_fill_tensor(n_dims, dim_names, size, data);

    printf("%f\n", (tensor -> data)[4]);

    int idxs[] = {9,5};
    
    int flat_idx = get_flat_idx(tensor, dim_names, idxs);

    printf("%d",flat_idx);


}