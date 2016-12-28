# Concepts
- perform a trap - interrupt execution of the program such that no further operations are performed.
- processes may be interrupted by receiving signals
- `signal` functions
- `wide registers` - consist of multiple physical registers

# Refs
- http://teaching.idallen.com/dat2343/10f/notes/
- https://www.coursera.org/course/hwswinterface

# MIPS
- spim - MIPS simulator

# x86-64
- [System V ABI for AMD64 Architecture](http://x86-64.org/documentation/abi.pdf)
- http://www.intel.com/content/www/us/en/architecture-and-technology/64-ia-32-architectures-software-developer-vol-3a-part-1-manual.html
- http://www.intel.com/content/www/us/en/processors/architectures-software-developer-manuals.html

# ARM
- [ARM ABI](http://infocenter.arm.com/help/index.jsp?topic=/com.arm.doc.subset.swdev.abi/index.html)

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
- Trap (exception) in the CPU itself. A trap is used for errors occurring during program execution that cannot be handled within the program itself (e.g. if ALU is commanded to divide a number by zero).
- A special instruction in the ISA which causes an interrupt. Used for a variety of purposes, such as to request services from low-level system software such as device drivers, e.g., to communicate with the disk controller to request data be read or written to the disk.

## Interrupt handlers
Each interrupt has its own interrupt handler. An interrupt handler is a callback function in microcontroller firmware, an operating system or a device driver, whose execution is triggered by the reception of an interrupt. The number of hardware interrupts is limited by the number of interrupt request (IRQ) lines to the CPU, but there may be hundreds of different software interrupts. 

An interrupt vector table (IVT), is a data structure that associates a list of interrupt handlers with a list of interrupt requests.

- https://en.wikipedia.org/wiki/Interrupt
- https://en.wikipedia.org/wiki/Programmable_Interrupt_Controller
- https://en.wikipedia.org/wiki/End_of_interrupt
- https://en.wikipedia.org/wiki/Interrupt_vector_table
- https://en.wikipedia.org/wiki/Interrupt_descriptor_table

# Flags
- https://en.wikipedia.org/wiki/Status_register
- https://en.wikipedia.org/wiki/Carry_flag
- https://en.wikipedia.org/wiki/Overflow_flag
- http://bochs.sourceforge.net/

# GNU Binutils

- gnu.org/software/binutils

- `asm` - https://sourceware.org/binutils/docs-2.26/as/index.html
- objdump
- ld

# GDB
- http://stackoverflow.com/questions/11460593/x86-labels-and-lea-in-gdb
