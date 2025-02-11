# Assembly Language Bug: Incorrect System Call

This repository demonstrates a common error in assembly language programming: using the wrong system call number for writing to standard output (stdout). The provided code attempts to print the message "Hello, world!" but fails because it uses the wrong system call.

## Bug Description

The bug lies in the commented-out lines within the `_start` section.  The code correctly uses `sys_exit` to terminate the program but the lines intend to use `sys_write` are incorrect.  The values for registers `eax`, `ebx`, `ecx`, and `edx` are all wrong for writing to stdout, leading to undefined behavior or a program crash.

## Solution

The solution replaces the commented-out code with the correct values for the `sys_write` system call. This ensures the message is properly written to the console before the program exits.