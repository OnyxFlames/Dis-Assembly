# Hello world.s
# Prints "Hello world!\n" to STDIN
# Compile as: "gcc Helloworld.s -o Helloworld.exe" or compiler equivalent

LC0:
    .ascii "Hello world!\0" # Load "Hello world!\0" as a value to be later printed

.globl _main                # Define _main as a global, won't compile without.

_main:
    pushl   %ebp            # Push the stack base - crashes without this line  
    movl	%esp, %ebp      # Push the current stack pointer to %ebp
    movl    $LC0, (%esp)    # Move the line "Hello world!\0" into %esp
    call    _puts           # Call _puts which will print the value of %esp
    xorl    %eax, %eax      # Generates when returning 0 at the end of main()
    leave                   # Crashes without
    ret                     # Return out of _main
