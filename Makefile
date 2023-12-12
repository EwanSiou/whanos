CC = gcc
CFLAGS = -Wall -Wextra -std=c11
SRC = main.c functions.c
OBJ = $(SRC:.c=.o)
EXEC = mon_programme

all: $(EXEC)

$(EXEC): $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $(EXEC)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(EXEC)
