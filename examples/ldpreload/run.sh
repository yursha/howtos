#!/usr/bin/env bash

set -e

rm -f *.o
rm -f a.out

clang -fPIC -O -c stdio.c
clang -shared -o libc.so stdio.o
clang main.c

echo "Running ./a.out"
echo
./a.out

echo

echo "Running LD_PRELOAD=./libc.so ./a.out"
echo
LD_PRELOAD=./libc.so ./a.out

rm *.o
rm a.out
