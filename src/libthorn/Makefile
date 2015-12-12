
CC = clang
LD = llvm-link
CFLAGS = -emit-llvm -Wno-ignored-attributes
LDFLAGS =
OBJS = object.o string.o null.o closure.o integer.o bool.o float.o array.o  \
       throw.o start.o memory.o object_proto.o proc.o spawn.o process.o 		\
       msg_queue.o range.o send.o future.o entries.o data.o callsite.o       \
       object_map.o ptr_tag.o

OUTPUT = libthorn.o

all: $(OUTPUT)

$(OUTPUT): $(OBJS)
	$(LD) $(OBJS) -o $(OUTPUT) $(LDFLAGS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm $(OBJS) $(OUTPUT)
