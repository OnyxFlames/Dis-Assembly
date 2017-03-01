LC0:
    .ascii "Hello world!\0"

.globl _main

_main:
    pushl   %ebp
    movl	%esp, %ebp
    movl    $LC0, (%esp)
    call    _puts
    xorl    %eax, %eax
    leave
    ret
