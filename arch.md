# MIPS
- spim - MIPS simulator

# x86-64

# ARM

# Interrupts
- https://en.wikipedia.org/wiki/Interrupt

An interrupt is a signal emitted by hardware or software to the CPU to interrupt the currently executing thread. 

## CPU response flow
- halt thread execution
- save thread stateex
- execute an interrupt handler
- restore thread state
- resume thread execution

## Interrupt origins
- Hardware interrupt from a peripheral. When external devices (e.g. disk controlloer, keyboards, mice) send electronic signals to the CPU Unlike the software type, hardware interrupts are asynchronous and can occur in the middle of instruction execution, requiring additional care in programming. The act of initiating a hardware interrupt is referred to as an interrupt request (IRQ).
- Trap (exception) in the CPU itself. A trap is used for errors occurring during program execution that cannot be handled within the program itself. For example, if the ALU is commanded to divide a number by zero, this impossible demand will cause a divide-by-zero exception, perhaps causing the computer to abandon the calculation or display an error message.
- A special instruction in the ISA which causes an interrupt. Used for a variety of purposes, such as to request services from low-level system software such as device drivers, e.g., to communicate with the disk controller to request data be read or written to the disk.

Each interrupt has its own interrupt handler. The number of hardware interrupts is limited by the number of interrupt request (IRQ) lines to the CPU, but there may be hundreds of different software interrupts. 

