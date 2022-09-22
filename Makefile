CC = gcc 		#指定编译器为 gcc 
SRC = $(wildcard ./*.c)		#指定源文件 src目录下的所有.c文件
Target = sha256 	#指定目标文件 bin目录下的main
CFLAGS = -I ./  \
		#-L ./lib	#指定编译的参数
OBJ = $(patsubst %.c, %.o, $(SRC))	#把SRC所有的.c文件完成.o文件的替换


$(Target):$(OBJ)
	$(CC) $^ -o $@ $(CFLAGS)

%.o:%.c
	$(CC) -c $^ -o $@ $(CFLAGS)

clean:
	$(RM) $(Target) $(OBJ)
