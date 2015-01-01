FSX         := bin/fsx-linux
FSX_SRC     := src/fsx-linux.c
CLEAN_FILES := ${FSX}

all: ${FSX}

${FSX}: ${FSX_SRC}
	gcc -w -o $@ $<

test: all
	./nfsv2_test.sh

clean:
	rm -f ${CLEAN_FILES}

.PHONY: all test clean
