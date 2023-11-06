#include <stdio.h>
#include <stdlib.h>


typedef struct{

    int n_rows;
    int n_cols;
    float data[]; // gonna use that trick i saw on youtube to make the data contiguous :)
}matrix;


matrix* create_matrix(int n_rows, int n_cols){

    int n_elements = n_rows*n_cols;

    int size = sizeof(matrix) + n_elements*sizeof(float);

    matrix* matrix = malloc(size);
    
    matrix -> n_rows = n_rows;
    matrix -> n_cols = n_cols;


    return matrix;


}

matrix* create_and_fill_matrix(float* data, int n_rows, int n_cols){
    
    matrix* matrix = create_matrix(n_rows, n_cols);

    int n_elements = n_rows*n_cols;
    
    for (int i=0; i<n_elements; i++){
        (matrix -> data)[i] = data[i];
    }

    return matrix;
}



float add(float a, float b){
    return a+b;
}


int get_flat_idx(matrix* matrix, int row_idx, int col_idx){
    return matrix -> n_cols * row_idx + col_idx;
}

void print_matrix(matrix* matrix){

    for (int i=0; i<(matrix -> n_rows); i++){
        for (int j=0; j<(matrix -> n_cols); j++){
            printf("%f  ", (matrix -> data)[get_flat_idx(matrix, i, j)]);
        }
        printf("\n");
    }
}

matrix* element_wise(matrix* matrix1, matrix* matrix2, float (*op) (float, float) ){

    int n_rows1 = matrix1 -> n_rows;
    int n_rows2 = matrix2 -> n_rows;
    
    int n_cols1 = matrix1 -> n_cols;
    int n_cols2 = matrix2 -> n_cols;

    if (n_rows1 != n_rows2 || n_cols1 != n_cols2){
        printf(" not equal size ):<\n");
    }

    matrix* matrix_out = create_matrix(n_rows1, n_cols1);

    for (int i=0; i<n_rows1; i++){
        for (int j=0; j<n_cols1; j++){

            int flat_idx = get_flat_idx(matrix1, i, j);

            float value1 = (matrix1 -> data)[flat_idx];
            float value2 = (matrix2 -> data)[flat_idx];

            float result = op(value1, value2);

            (matrix_out -> data)[flat_idx] = result;
        }
    }

    return matrix_out;
}


matrix* get_section(matrix* matrix_in, int row_low, int row_high, int col_low, int col_high){

    int n_rows_out = row_high-row_low;
    int n_cols_out = col_high-col_low;

    matrix* matrix_out = create_matrix(n_rows_out, n_cols_out);

    float* data_in = matrix_in -> data;
    float* data_out = matrix_out -> data;

    for (int i=0;i<n_rows_out;i++){
        int i_shifted = i+row_low;
        for (int j=0; j<n_cols_out; j++){
            int j_shifted = j+col_low;

            int flat_idx_in = get_flat_idx(matrix_in, i_shifted, j_shifted);
            int flat_idx_out = get_flat_idx(matrix_out, i, j);

            data_out[flat_idx_out] = data_in[flat_idx_in];

        }
    }

    return matrix_out;

}


matrix* transpose(matrix* matrix_in){

    int n_rows_old = matrix_in -> n_rows;
    int n_cols_old = matrix_in -> n_cols;


    matrix* transposed = create_matrix(n_cols_old, n_rows_old);

    float* data_in = matrix_in -> data;
    float* data_out = transposed -> data;

    for (int i=0;i<n_rows_old;i++){
        for (int j=0;j<n_cols_old;j++){
            int flat_idx_old = get_flat_idx(matrix_in, i, j);
            int flat_idx_new = get_flat_idx(transposed, j, i);

            data_out[flat_idx_new] = data_in[flat_idx_old];

        }
    }

    return transposed;

}

int main(){
    // int a[6] = {1,2,3,4,5,6};

    float arr[6] = {1,2,3,4,5,6};

    matrix* matrix1 = create_and_fill_matrix(arr,2,3);


    float arr2[6] = {1,5,3,4,5,6};

    matrix* matrix2 = create_and_fill_matrix(arr2,2,3);

    matrix* sum = element_wise(matrix1, matrix2, add);

    matrix* section = get_section(matrix1, 0,2,1,3);

    print_matrix(matrix1);
    printf("\n");
    
    print_matrix(transpose(matrix1));
}
