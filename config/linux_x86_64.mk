CC = gcc

PKGS = raylib


CFLAGS += -Wall
CFLAGS += -Wextra
CFLAGS += -pedantic
CFLAGS += -Isrc/include
CFLAGS += $$(pkg-config --cflags $(PKGS))

LIBS += -lm
LIBS += -lalloc
LIBS += $$(pkg-config --libs $(PKGS))


OBJS += $(CACHE)/main.o


$(CACHE)/main.o: src/carnage/main.c
	$(CC) $(CFLAGS) -c src/carnage/main.c -o $@


$(RELEASE)/$(TARGET): $(OBJS)
	$(CC) $(OBJS) $(LIBS) -o $(RELEASE)/$(TARGET)





