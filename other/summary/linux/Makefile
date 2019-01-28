CC = gcc

#shell函数主要用于执行shell命令，具体到这里就是找出当前目录下所有的.c和.h文件.
dep = $(shell find ./ -name "*.h")
src = $(shell find ./ -name "*.c")

out= outName

#$(src:%.c=%.o)则是一个字符替换函数，它会将src所有的.c字串替换成.o，实际上就等于列出了所有.c文件要编译的结果.
obj = $(src:%.c=%.o)

aiwifi:$(obj)
	$(CC) $(obj) -o $(out) -lpthread -lm

%.o:%.c $(dep)
	$(CC) -c $< -o $@

clean:
	rm -rf $(obj) $(out)

#$^：代表所有依赖文件
#$@：代表当前语句的目标
#$<：代表第一个依赖文件

# 设置当前源文件路径,即设置当前目录下的src目录为SRC_PATH
# SRC_PATH = ${shell pwd}/src

