# preload-example
An example how to user LD_PRELOAD to call some code from the main binary before it even starts executing

1. Compile by runnning 'make'.
2. The main program on its own just prints the name of the source file ("main.c").
3. During compilation of preload.so the printX symbol is found in 'main' binary and its address is passed to the preload.c via a #define
4. Running 'make run' will show two lines printed: "preload.c" and then "main.c", the code in preload.so called the code from 'main' before it even executed.
