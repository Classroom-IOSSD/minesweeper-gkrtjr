CC=gcc
CFLAGS=-Wall
OBJS = conio.o minesweeper.o
HEADERS=conio.h
TARGET=minesweeper

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c $<

$(OBJS): $(HEADERS)

.PHONY: clean

clean:
	$(RM) $(OBJS) $(TARGET)
