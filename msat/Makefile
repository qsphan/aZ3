MSAT_DIR = /home/qsp/Programs/mathsat-5.3.14-linux-x86_64/
#MSAT_DIR=/homes/qsp30/Programs/mathsat-5.2.8

CC = gcc
MSAT_OPTIONS = -I${MSAT_DIR}/include -L${MSAT_DIR}/lib -lmathsat -lgmpxx -lgmp

all: sharpSMT

sharpSMT: sharpSMT.c
	${CC} sharpSMT.c ${MSAT_OPTIONS} -lstdc++ -o sharpSMT

clean:
	rm -f sharpSMT

test:
	cp sharpSMT ../test/sharpSMT
