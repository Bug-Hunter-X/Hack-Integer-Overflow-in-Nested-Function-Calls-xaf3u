# Hack Integer Overflow Bug

This repository demonstrates a subtle integer overflow bug in Hack code. The bug arises from the interaction of nested function calls and the limitations of 32-bit signed integers. The code appears correct at first glance but exhibits unexpected behavior when large input values are used.

## Bug Description
The `baz` function calls `bar`, which in turn calls `foo`.  When the input to `baz` exceeds a certain threshold, an intermediate result within `bar` overflows the 32-bit signed integer capacity.  This leads to incorrect calculations and potentially crashes.

## Solution
The solution involves using a larger integer type to prevent overflow. The revised code is available in `bugSolution.hack`.

## How to Reproduce
1. Clone this repository.
2. Compile and run the `bug.hack` file using a Hack compiler (e.g., HHVM). Try input values around 2147483647.
3. Observe the incorrect output due to integer overflow.
4. Compile and run the `bugSolution.hack` file for a correct implementation using a larger integer type.