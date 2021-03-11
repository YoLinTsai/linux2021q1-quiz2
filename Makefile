CC := gcc
EXE := main
CFLAGS := -O1 -g -Wall -Werror -Idudect -I.
OBJS := q1.o q2.o

%.o: %.c
	$(CC) $(CFLAGS) -c $<

q1:$(OBJS)
	$(CC) $(CFLAGS) -o $(EXE) q1.o

q2:$(OBJS)
	$(CC) $(CFLAGS) -o $(EXE) q2.o

clean:
	rm -rf $(EXE) $(OBJS)