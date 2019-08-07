# Computer architectures design

Computer architectures designs:
- Program-controlled system
- Stored-program system
  - Von Neumann architecture
  - Harvard architecture
  - Modified Harvard architecture


**Program-controlled** computer system of the 1940s, such as the Colossus and the ENIAC, were programmed by plugboards: setting switches and inserting patch cables to route data and control signals between various functional units. Computer of this kind 

**Stored-program**computer, a significant advancement over the old program-controlled systems, kept both, program instructions and data in memory. Extended definition refers to the uniform and interchangeable treatment of programs and data in memory (instructions are the same as data).


**Von Neumann architecture** (VNA) today refers to any *stored-program* computer in which an instruction fetch and a data operation cannot occur concurrently because they share a common bus. This is known as the **von Neumann bottleneck**, often imposing a limit to the system's performance. The popular 80x86 family uses the von Neumann architecture (VNA).

The von Neumann architecture, also called "von Neumann model" or "Princeton architecture", is a computer architecture, still in use today, described by John von Neumann, a pioneer in computer design, in 1945, while he was working on the EDVAC computer.


It defines components and design of an electronic digital computer:
- A processing unit that contains ALU and registers
- A control unit with instruction register and program counter
- Memory that stores data and instructions
- External mass storage
- IO mechanisms

**Harvard architecture**, on the other hand, avoids the von Neumann bottleneck at the cost of a much more complex design. Although also a stored-program system, it features a dedicated set of address and data buses for reading and writing to memory, along with an additional set of address and data buses for fetching instructions.

**Modified Harvard architecture**, a variation of Harvard architecture, allows access to the contents of the instruction memory as if it were data. Most modern computers, proclaimed as Harvard architecture, are modified Harvard architecture.



Majority of modern computers use the same memory for both data and program instructions.

---

https://www.wikiwand.com/en/Stored-program_computer
https://www.wikiwand.com/en/Von_Neumann_architecture
https://www.wikiwand.com/en/Harvard_architecture
