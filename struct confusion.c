#include <stdio.h>

/*


having trouble with this one

does make sense that the ref to s2 would be lost after it exits scope

having trouble understanding assembly

*/

struct s{
    int a;
    struct s* next;
};

void do_stuff(struct s* s1_ref){
    struct s s2;
    s2.a = 7;
    s1_ref -> next = &s2;

    // s1_ref -> a = 20;
    // printf("%d",*(((int*)&s1_ref)-6));

    


}



int main(){

    const int a = 4;



    struct s s1;

    s1.a = 4;

    //printf("%d",s1);

    do_stuff(&s1);
    printf("hullo\n");
    printf("%d\n",s1.next -> a);

    // printf("%d",*(((int*)&s1)-10));

}