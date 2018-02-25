# ECC

There are ECC and some non-ECC dynamic RAM modules (DRAM).
Non-ECC modules have 8 RAM chips (1 chip for each bit of the byte), and cannot detect random bit-errors.
ECC modules have 9 chips, so a spare bit per byte that can record parity, and therefore an error in the other 8 bits can be detected.
It tends to be that servers use ECC and laptops and home machines go for non-ECC.

# Performance
A 2011 presentation at the GDC by intel quoted:
- 1 cycle to read a register
- 4 cycles to reach to L1 cache
- 10 cycles to reach L2 cache
- 75 cycles to reach L3 cache
- hundreds of cycles to reach main memory

This is mostly because there is computation going on to figure out the addresses in the higher cache levels, and also because each larger cache will likely fetch more memory, as caches fill by line, and each line contains many bits.

Most compilers push the loads to the top so as many as possible happen first, allowing all your computations to take place in regiesters. Out-of-order CPUs pipeline that even more, and just keep reading instructions till their pipeline is full in hopes of keeping the ALU busy on what data it did manage to pull in.

Computationally easy problems can quickly become IO bound.
The best thing you can do is take a "Data Oriented Design" to your code, and try to structure your data such that accesses are localized.
The most common advice is to change from a "array of structures" to a "structure of arrays".
The idea being, that updating the position of all your objects doesn't require the rest of the object data.
However, a cache read will pull in much object if it is in AOS form and that data won't be used.
While a SOA form will pull in this objects position and the following few object positions which needed updating anyway. 
