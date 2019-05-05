CC = clang
CFLAGS = -Wall -std=c11 -pedantic -O3
LDFLAGs =
LIBS = -lm

SRC = $(wildcard *.c)
OBJ = $(SRC:%.c=obj/%.o)

maze: $(OBJ)
	$(CC) $(LDFLAGS) $(OBJ) $(LIBS) -o maze

obj/%.o: %.c
	@mkdir -p obj
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf obj maze
