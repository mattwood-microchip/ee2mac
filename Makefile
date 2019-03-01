CC = $(CROSS_COMPILE)gcc
CFLAGS = -Wall
OBJ = $(patsubst %.c, %.o, $(wildcard *.c))

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@
	
ee2mac: $(OBJ)
	$(CC) $(OBJ) $(CFLAGS) -o $@

.PHONY: clean
clean:
	rm -f *.o ee2mac
