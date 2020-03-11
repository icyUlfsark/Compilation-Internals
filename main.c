#include<stdio.h>
#define RESULT "Result"

int add(int x, int y){
    return x + y;
}

int sub(int x, int y){
    return y - x;
}

int main(){

    int x = 5;
    int y = 6;

    int a = add(x, y);
    int b = sub(x, y);

    int z = sub(b, a);

    printf("%s = %d\n", RESULT, z);

    return 0;
}
