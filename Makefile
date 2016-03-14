CC=gcc
CFLAGS = -Wall
LEX=flex
LDLIBS = -lfl
EXEC=ex1 ex1.4 ex1.5_a ex1.5_b ex1.6_a ex1.8 ex11
OUTPUT=$(addsuffix, output, $(EXEC))

%.output: % %.input
		./$< < $(word 2, $^) > $@ && cat $@

.PHONY=clean all

clean :
	rm -f *.o *.output core $(EXEC) $(OUTPUT)

all: $(EXEC) $(OUTPUT)
