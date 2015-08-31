
#################################################
# Makefile format
# target: dependencies
# <tab>	 Command to generate target
#################################################

# -----------------------------------------------
# Super useful shortcuts:
#   $@ matches the target;
#   $< matches the first dependent
#   $^ Matches all dependencies
# -----------------------------------------------

# -----------------------------------------------
# But first, some definitions.

# -----------------------------------------------
# Flag to replace gcc,  $(CC) = gcc
CC= gcc
# -----------------------------------------------
# CLEAN definition - git rid of compiled stuff
CLEAN= rm -rf *.o story
CLEANWIN = del /f /s *.o *.exe story
# -----------------------------------------------
# TEST definition - write to file and cat file
TEST= (./story > the_story.txt) ; cat the_story.txt

# -----------------------------------------------DERS.h
# The standard default target is 'all'
# This target has no command, only a dependency.
# We will execute test   though, when it's built.
# -----------------------------------------------

all: story

test:
	@$(TEST)

# -----------------------------------------------
# When you type 'make clean', you get rid of
# all of the *.o and the 'story' file.
# -----------------------------------------------

clean:
	$(CLEAN)

cleanwin:
	$(CLEANWIN)
# -----------------------------------------------
# Now we bring in our dependencies.
# 'all' needs 'story.o'. What does story need?
# And how do we make it?
# -----------------------------------------------

story: story.o bpbkt7.o jbekcc.o dhart94.o jkdt2.o mdvy96.o cwm262.o jlhthd.o essxpd.o
	$(CC) -o story $^
	

# -----------------------------------------------

story.o: story.c
	$(CC) -c $^

# -----------------------------------------------
#pawprint.o -  where is your .c derived object file - where is your file
bpbkt7.o: sentences/bpbkt7.c
	$(CC) -c $<

jbekcc.o: sentences/jbekcc.c
	$(CC) -c $<

dhart94.o: sentences/dhart94.c
	$(CC) -c $<
	
jkdt2.o: sentences/jkdt2.c
	$(CC) -c $<

mdvy96.o: sentences/mdvy96.c
	$(CC) -c $<

cwm262.o: sentences/cwm262.c
	$(CC) -c $<
    
jlhthd.o: sentences/jlhthd.c
	$(CC) -c $<

essxpd.o: sentences/essxpd.c
	$(CC) -c $<
	
jtr4bd.o: sentences/jtr4bd.c
	$(CC) -c $<

