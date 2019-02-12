
#CC	= arm-linux-gnueabi-gcc
CC	= gcc
CFLAGS	= -DDEBUG -O3 -g -m64
LDFLAGS	= -static

SRC := fund_analysis.c
OBJ := $(patsubst %.c,%.o,${SRC})

fund_analysis:debug.o fund_analysis.o
	$(CC) $(LDFLAGS) $^ -o $@
	
depend:
	${CC} -MM ${SRC} > depend

clean:
	rm -f fund_analysis
	rm -f *.o
	rm -f *.tmp
