
all: main preload

main: 
	gcc main.c -o main

preload: main
	$(eval A := $(shell nm main | grep printX | cut -d' ' -f1))
	gcc preload.c -DADDR=0x$(A)LL -shared -fPIC -o preload.so

run:
	LD_PRELOAD=./preload.so ./main

clean:
	rm main preload.so