#include <stdio.h>

int main() {
    int number;
    printf("Enter your number: ");
    // Считываем целое число и сохраняем его в переменную 'number'
    scanf("%d", &number);
    if(number == 5)
    {
        printf("You entered: %d\n", number);
    }
    else
    {
        printf("Wrong password\n");
    }

    return 0;
}