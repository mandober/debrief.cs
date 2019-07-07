# CPU

* CPU
  * CPU components
    - processing unit
    - control unit
    - alu
    - fpu
    - program counter
    - co-processor
    - cache
    - memory controller
    - TLB
    - fetch/decode/p
  * CPU design
    - microarchitecture
    - ISA
  * CPU Actions
    - context switch


## Processor technologies

* CPU
  * Models of computation
    * Abstract machines:
    * Turing Machines
      - Turing Machine (TM)
      - TM equivalent
      - TM types by determinism:
        - Deterministic Turing machine (DTM)
        - Non-deterministic Turing machine (NTM)
      - TM variants:
        - Alternating TM (ATM)
          - NTM
        - Differentiable neural computer
          - recurrent artificial neural network architecture
          - with an auto-associative memory
        - Quantum TM (QTM)
          - Linear QTM (LQTM)
        - Post–TM
        - Probabilistic TM
          - NTM that chooses between the available transitions at each 
          point according to some probability distribution
        - Read-only TM
          - or Two-way deterministic finite-state automaton (2DFA) 
          is class of models of computability that behave like a standard DTM and can move in both directions across input, except it cannot write to its input tape.
        - Read-only right moving TMs
        - Multi-tape TM
          - TM with several tapes; each tape has its own RW head
        - Multi-track TM
          - specific type of Multi-tape TM; in a standard n-tape TM, n heads move independently along n tracks.
        - Symmetric TM
          - STM has a configuration graph that is undirected
        - Total TM
          - machine that always halts (also called decider)
          - machine that halts for every input
          - because it always halts, it is able to decide if 
          a given string is a member of a formal language
        - Unambiguous TM
        - Universal TM (UTM)
          - can simulate an arbitrary TM on arbitrary input by reading both the description of the machine to be simulated as well as the input thereof from its own tape
        - Zeno machines (ZM)
          - also Accelerated TM, are a hypothetical computational model that allows a countably infinite number of algorithmic steps to be performed in finite time.
    - Belt machine
    - Stack machine
    - Finite-state machine
      - Finite-state machine with datapath
      - Hierarchical
      - Queue automaton
    - Register machines
      - Counter
      - Pointer
      - Random-access
      - Random-access stored program
  * Architecture
    * Architectures
      - Von Neumann
      - Harvard
      - Harvard modified
      - Dataflow
      - Transport-triggered
      - Cellular
    * Memory access
      - NUMA
      - HUMA
      - Load/store
      - Register/memory
    - Endianness
    - Cache hierarchy
    - Memory hierarchy
      - Virtual memory
      - Secondary storage
    - Heterogeneous System Architecture
    - Fabric computing
    - Multiprocessing
    - Cognitive computing
    - Neuromorphic engineering
  * Instruction set architectures
    * Types
      - Complex instruction set computer (CISC)
      - Reduced instruction set computer (RISC)
      - Application-specific instruction set processor
      - Explicit data graph execution (EDGE)
      - TRIPS architecture
      - Very long instruction word (VLIW)
      - Explicitly parallel instruction computing (EPIC)
      - Minimal instruction set computer (MISC)
      - One instruction set computer (OISC)
      - No instruction set computing (NISC)
      - Zero instruction set computer (ZISC)
      - addressing modes
    * Families
      - x86
      - ARM architecture
      - Microprocessor without Interlocked Pipelined Stages (MIPS)
      - Power architecture
        - PowerPC
      - Scalable Processor Architecture (SPARC)
      - Intel Itanium architecture (IA-64)
      - Unicore
      - MicroBlaze
      - RISC-V
      - others
  * Execution/Instruction cycle
    * Instruction pipelining
      - Pipeline stall
      - Operand forwarding
      - Classic RISC pipeline
    * Hazards (computer architecture)
      - Data dependency
      - Structural Hazards
      - Control Hazards
      - False sharing
    * Out-of-order execution
      - Tomasulo algorithm
      - Reservation station
      - Re-order buffer
      - Register renaming
    * Speculative execution
      - Branch prediction
      - Memory dependence prediction
  * Parallelism
    * Parallelism Levels
      - Bit-level parallelism
        - Bit-serial architecture
        - Word-level parallelism
      - Instruction-level parallelism
      - Instruction pipelining
        - Scalar processor
        - Superscalar processor
      - Task parallelism
        - Thread
        - Process
      - Data parallelism
        - Vector processor
      - Memory-level parallelism
      - Distributed computing
    * Multithreading
      - Temporal multithreading
      - Simultaneous multithreading
        - Hyper-threading
      - Speculative multithreading
      - Preemptive multithreading
      - Cooperative multithreading/multitasking
    * Flynn's taxonomy
      - SISD (single instruction, single data)
      - SIMD (single instruction, multiple data)
        - SWAR (SIMD within a register)
      - SIMT (Single instruction, multiple thread)
      - MISD (multiple instruction, single data)
      - MIMD (multiple instruction, multiple data)
      - SPMD (single program, multiple data)
  * Processor Performance
    - Transistor count
    - Instructions per cycle (IPC)
    - Cycles per instruction (CPI)
    - Instructions per second (IPS)
    - Floating-point operations per second (FLOPS)
    - Transactions per second (TPS)
    - Synaptic updates per second (SUPS)
    - Performance per watt (PPW)
    - Cache performance metrics
  * Processor Types
    * Types by purpose
      - Central processing unit (CPU)
      - Graphics processing unit (GPU)
      - General-purpose computing on graphics processing units (GPGPU)
      - Vector processor
      - Barrel processor
      - Stream processor
      - Coprocessor
      - Application-Specific Integrated Circuit (ASIC)
      - field-programmable gate array (FPGA)
      - complex programmable logic device (CPLD)
      - Multi-chip module (MCM)
      - System in package (SiP)
    * Types by application
      - Microprocessor
      - Microcontroller
      - Mobile processor
      - Notebook processor
      - Ultra-low-voltage
      - Application-specific instruction set processor (ASIP)
    * Systems on Chip
      - System-on-Chip (SoC)
      - Multiprocessor (MPSoC)
      - Programmable (PSoC)
      - Network-on-Chip (NoC)
    * Hardware accelerators
      - AI accelerator
      - Vision processing unit (VPU)
      - Physics processing unit (PPU)
      - Digital signal processor (DSP)
      - Tensor processing unit (TPU)
      - Secure cryptoprocessor
      - Network processor
      - Baseband processor
  * Word size
    - 1-bit
    - 2-bit
    - 4-bit
    - 8-bit
    - 16-bit
    - 32-bit
    - 48-bit
    - 64-bit
    - 128-bit
    - 256-bit
    - 512-bit
    - Variable word size
    - others
  * Core count
    - Single-core processor
    - Multi-core processor
    - Manycore processor
    - Heterogeneous computing/architecture
  * CPU Components
    * Components
      - Core
      - Cache
        - CPU cache
        - Cache replacement policies
        - Cache coherence
      - Bus
      - Clock rate
      - FIFO (computing and electronics)
    * Functional units
      - Arithmetic logic unit (ALU)
      - Address generation unit (AGU)
      - Floating-point unit (FPU)
      - Memory management unit (MMU)
        - Load–store unit
        - Translation lookaside buffer (TLB)
    * Logic
      - Combinational
      - Sequential
      - Glue logic
      - Logic gate
        - Quantum logic gate
        - Gate array
    * Registers
      - Processor register
      - Register file
      - Memory buffer register
      - Program counter
      - Stack register
    * Control unit
      - Instruction unit (IU)
      - Data buffer
      - Write buffer
      - Microcode ROM
      - Counter
    * Datapath
      - Multiplexer
      - Demultiplexer
      - Adder
      - Multiplier
        - Binary multiplier
        - CPU multiplier
      - Binary decoder
        - Address decoder
        - Sum addressed decoder
      - Barrel shifter
    * Circuitry
      - Integrated circuit
        - 3D integrated circuit
        - Mixed signal integrated circuit
        - Power management integrated circuit
      - Boolean circuit
      - Digital circuit
      - Analog circuit
      - Quantum circuit
      - Switch
  * Power management
    - Power Management Unit (PMU)
    - Advanced Power Management (APM)
    - Advanced Configuration and Power Interface (ACPI)
    - Dynamic frequency scaling
    - Dynamic voltage scaling
    - Clock gating
    - Performance per watt (PPW)


* CPU design
  * Components
    * datapaths (such as ALUs and pipelines)
    * control unit: logic which controls the datapaths
    * Memory components such as register files, caches
    * Clock circuitry such as clock drivers, PLLs, clock distribution networks
    * Pad transceiver circuitry
    * Logic gate cell library which is used to implement the logic
  * Implementation logic
    - Transistor-transistor logic/Small Scale Integration logic chips (deprec.)
    - Programmable Array Logic/Programmable logic devices (deprec.)
    - Emitter-coupled logic (ECL) gate arrays (uncommon)
    - CMOS gate arrays (deprec.)
    - CMOS mass-produced ICs (the vast majority of CPUs by volume)
    - CMOS ASICs (only for a minority of special applications due to expense)
    - Field-programmable gate arrays (FPGA) (common for soft microprocessors, and more or less required for reconfigurable computing)
  * Tasks
    - Programmer-visible instruction set architecture, 
      which can be implemented by a variety of microarchitectures
    - Architectural study and performance modeling in ANSI C/C++ or SystemC
    - High-level synthesis (HLS) or register transfer level (RTL, e.g. logic) implementation
    - RTL verification
    - Circuit design of speed critical components (caches, registers, ALUs)
    - Logic synthesis or logic-gate-level design
    - Timing analysis to confirm that all logic and circuits will run at the specified operating frequency
    - Physical design including floorplanning, place and route of logic gates
    - Checking that RTL, gate-level, transistor-level and physical-level representations are equivalent
    - Checks for signal integrity, chip manufacturability

* Processing units
  - CPU
  - GPU: Graphics Processing Unit
  - VPU: Video Processing Unit
  - TPU: Tensor Processing Unit
  - NPU: Neural Processing Unit
  - PPU: Physics Processing Unit
  - DSP: Digital Signal Processor
  - ISP: Image Signal Processor
  - SPU/SPE: Synergistic Processing Element in the Cell Microprocessor
  - FPGA: Field-programmable Gate Array
  - Sound chip

* Computer hardware by type‎
  - Computer buses‎ (11 C, 168 P)
  - Central processing unit‎ (5 C, 80 P)
  - Computer hardware clones‎ (5 C, 4 P)
  - Computer hardware cooling‎ (39 P)
  - Computer enclosure‎ (1 C, 15 P)
  - Graphics hardware‎ (10 C, 40 P)
  - Graphics processing units‎ (1 C, 42 P)
  - Computer memory‎ (13 C, 192 P)
  - Microcontrollers‎ (5 C, 133 P)
  - Microprocessors‎ (13 C, 84 P)
  - Motherboard‎ (11 C, 41 P)
  - Networking hardware‎ (16 C, 152 P)
  - Open-source hardware‎ (13 C, 61 P)
  - Computing output devices‎ (13 C, 34 P)
  - Computer peripherals‎ (16 C, 105 P)
  - Power supplies‎ (1 C, 24 P)
  - Proprietary hardware‎ (2 C, 12 P)
  - Computer real-time clocks‎ (8 P)
  - Computer data storage‎ (18 C, 34 P)
  - Video game hardware‎ (9 C, 35 P)

* Classes of computers‎
  - 12-bit computers, 16-bit,18,24,36,48,60
  - Analog computers‎
  - Avionics computers‎
  - Classes of mobile computers‎
  - Decimal computers‎
  - Early computers‎
  - Embedded systems‎
  - Fault-tolerant computer systems
  - Guidance computers‎
  - Human computers‎
  - Magnetic Core Memory computers
  - Mainframe computers‎
  - Massively parallel computers‎
  - Microcomputers‎
  - Military computers‎
  - Minicomputers‎
  - Mobile computers
  - One-of-a-kind computer
  - Quantum computing‎
  - Reconfigurable computing
  - Servers
  - Smart devices‎
  - Supercomputers‎
  - Ternary computers‎
  - Variable word length computers‎
  - Vector supercomputers
  - Clock signal‎

* Basic computer components
  * Input devices
    Keyboard Image scanner Microphone Pointing device Graphics tablet Joystick Light pen Mouse Optical Pointing stick Touchpad Touchscreen Trackball Refreshable braille display Sound card Webcam Softcam Video card
  * Output devices
    Monitor Refreshable braille display Printer Speakers Plotter Sound card Video card
  * Removable data storage
    Optical disc CD DVD Blu-ray Disk pack Floppy disk Memory card USB flash drive
  * Computer case
    Central processing unit (CPU) HDD / SSD / SSHD Motherboard Network interface controller Power supply Random-access memory (RAM) Fax modem Expansion card
  * Ports
    Ethernet FireWire (IEEE 1394) Parallel port Serial port PS/2 port USB Thunderbolt DisplayPort / HDMI / DVI / VGA eSATA Audio jack

Related
  - History of general-purpose CPUs
  - Microprocessor chronology
  - Processor design
  - Digital electronics
  - Hardware security module
