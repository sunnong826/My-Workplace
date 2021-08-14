#useful information at "http://doc.kldp.org/KoreanDoc/html/GNU-Make/GNU-Make-4.html"

CC = gcc 																								# compiler name
CFLAG = -g -Wall 																						# -g : option for gdb, debuging // -Wall : option that shows most of warning messages
#LDFLAGS = <link option>
#LDLIBS = <link library list>
OBJS = test.o test1.o																					# the object filess
SRCS = $(OBJS:.o=.c) 																					# change OBJS to (.o -> .c), SRCS = test.c test1.c 
TARGET = wow.out wow1.out																				# name of the output files

####################################################################################################### # build command AREA
wow.out : $(OBJS)																						# build target 1
	$(CC) -o $@ $(OBJS)

wow1.out : $(OBJS)																						# build target 2
	$(CC) -o $@ $(OBJS)


####################################################################################################### # macro AREA

all : $(TARGET)																							# all macro, if you want to build the files in 'all', command is "make all"


clean : 																								# clean macro, "make clean"
	rm -f *.o
	rm -f $(TARGET)


dep :																									# build file dependancy automatically, command is "make dep"
	gccmakedep $(SRCS)

