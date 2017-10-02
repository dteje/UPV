# Unit 1

## Introduction
#### Supercomputing
+ Concurrent execution of different tasks by different processing units
+ Concurrency can happen: 
  + in a single processor (several cores sharing key units)
  + in a single computer (with diff. processors)
    + with shared memory (all processors have same access)
    + with distributed memory (processor assigned to a memory) (info. exchanged with messages)
  + in a local network
  + in the Internet (fua, la ingeniería)

## Parallel computing models
##### Flynn's Taxonomy

| Instruction \ Data       | Single Data                | Multiple Data                            |
| ------------------------ | -------------------------- | ---------------------------------------- |
| **Single Instruction**   | SISD - Sequential computer | SIMD - Vector computers                  |
| **Multiple Instruction** | MISD                       | MIMD - Multiprocessors, Multi-core, clusters |

#### Parallel computing architectures

+ Shared-memory: 1 address space for all the processors
+ Distributed memory: Each CPU with a dedicated memory space
+ Hybrid: Each node is a processor with multiple processors
+ Multi-core processors
+ Many-core processors: Large number of single-core

#### Parallel computing models
##### 	Shared-memory

+ Access via **PRAM**: *Parallel Random Access Memory*
+ All process can access to any position
+ All process execute the same code
+ Info via variables

##### 	Distributed-memory (s.31)

+ All process share the same code
+ Info via messages



#### Parallel computing methodology