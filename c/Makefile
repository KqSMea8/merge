CC=gcc
#src=$(shell find ./ -maxdepth 1 -name "*.c") #research depth is 1
src=$(shell find ./ -name "*.c")
obj=$(src:%.c=%.o)
out=run
h=$(shell find ./ -name "*.gch")

all:$(obj)
	$(CC) $(obj) -o $(out) -lpthread -lm
	@echo "build" $(out) "successfully."

%.o:%.c
	@$(CC) -c $< -o $@

clean:
	rm -fr $(obj) $(out)

# $^: all the needed file.
# $<: the first needed file.
# $@: the target

# @echo "s" : echo the s, but not echo this sentence.
# @rm -fr $(obj) $(out) : do this command, but not echo it.
# rm -fr $(obj) $(out)	: do this command, and echo it.
