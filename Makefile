SRC     := minigbs.c debug.c audio.c ui.c x11.c
CFLAGS  := -g -O0 -D_GNU_SOURCE -std=gnu99
LDFLAGS := -lncursesw -ltinfo -lm -lasound -ldl

minigbs: $(SRC) minigbs.h
	$(CC) $(CFLAGS) $(SRC) -o $@ $(LDFLAGS)

clean:
	$(RM) minigbs
