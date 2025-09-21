void sort()
{

        asm(
        "   movl $0, %r12d \n" // int temp = 0
        "   movl $0, %r10d \n" // int i = 0
        "   movl $0, %r11d \n" // int j = 0
        "   jmp Check_i_iteration \n"

    "For_i: \n"
        "   movl $0, %r11d \n"

        "   movl %r10d, %eax \n"
        "   movl n(%rip), %r8d \n" // заменил %ebx на %r8d
        "   cmpl %eax, %r8d \n"
        
        "   addl $1, %eax \n"
        "   movl %eax, %r10d \n"

        "   jg Check_j_iteration \n"

    "For_j: \n"
        "   movl    %r11d, %eax \n"
        "   cltq    \n"
        "   leaq    0(, %rax, 4), %rdx \n"
        "   leaq    a(%rip), %rax \n"
        "   movl    (%rdx,%rax), %ebx \n" // Это a[j]

        "   movl    %r11d, %eax \n"
        "   addl    $1, %eax \n" // j + 1
        "   cltq    \n"
        "   leaq    0(, %rax, 4), %rdx \n"
        "   leaq    a(%rip), %rax \n"
        "   movl    (%rdx,%rax), %ecx \n" // a[j+1]

        "   cmpl    %ebx, %ecx \n"
        "   jl      Swap \n" // надо поменять a[j] и a[j+1]

        "   movl    %r11d, %eax \n" // увеличить j на 1
        "   addl    $1, %eax \n"
        "   movl    %eax, %r11d \n"
        
        "   jmp     Check_j_iteration \n" 

    "For_j_after_swap: \n"
        "   movl    %r11d, %eax \n" // увеличить j на 1
        "   addl    $1, %eax \n"
        "   movl    %eax, %r11d \n"
        
        "   jmp     Check_j_iteration \n" 

    "Check_j_iteration: \n"
        "   movl    %r11d, %eax \n"
        "   movl    n(%rip), %r8d \n"
        //"   subl    $1, %r8d \n" 
        "   movl    %r10d, %r9d \n"
        "   subl    %r9d, %r8d \n" 
        "   cmpl    %eax, %r8d \n"
        "   jg      For_j \n" // если j < n - 1 - i, то снова заходим в цикл

        "   jmp     Check_i_iteration \n" // иначе проверяем, нужно ли заходить в цикл i

    "Check_i_iteration: \n"
        "   movl    %r10d, %eax \n"
        "   movl    n(%rip), %r8d \n"
        "   cmpl    %eax, %r8d \n"
        "   jg      For_i \n" // if(i < n) заходим в цикл i снова
        
        "   jmp     Final \n" // выходим из программы если больше в цикл i не нужно заходить


        

        

    "Swap:      \n" // просто меняет a[j] и a[j+1] местами
        "   movl    %ebx, %r12d \n" // запомнили a[j]

        "   movl    %r11d, %eax \n"
        "   cltq    \n"
        "   leaq    0(, %rax, 4), %rdx \n"
        "   leaq    a(%rip), %rax \n"
        "   movl    %ecx, (%rdx,%rax) \n" // a[j] = a[j+1] (в %ecx все еще хранится a[j+1])

        "   movl    %r11d, %eax \n"
        "   addl    $1, %eax \n" // j + 1
        "   cltq    \n"
        "   leaq    0(, %rax, 4), %rdx \n"
        "   leaq    a(%rip), %rax \n"
        "   movl    %r12d, %ecx \n"
        "   movl    %ecx, (%rdx,%rax) \n" // a[j+1] = temp
        "   jmp     For_j_after_swap \n"


    "Final: \n"
    ""
    );

}