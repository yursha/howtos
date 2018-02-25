#!/usr/bin/env bash

clang -S -O0 -o lib0att.s lib.c
clang -S -O1 -o lib1att.s lib.c
clang -S -O2 -o lib2att.s lib.c
clang -S -O3 -o lib3att.s lib.c
clang -S -Ofast -o libfastatt.s lib.c

clang -S -O0 -masm=intel -o lib0intel.s lib.c
clang -S -O1 -masm=intel -o lib1intel.s lib.c
clang -S -O2 -masm=intel -o lib2intel.s lib.c
clang -S -O3 -masm=intel -o lib3intel.s lib.c
clang -S -Ofast -masm=intel -o libfastintel.s lib.c
