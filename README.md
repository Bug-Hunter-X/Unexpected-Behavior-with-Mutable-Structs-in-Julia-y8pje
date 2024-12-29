# Julia Mutable Struct Bug
This repository demonstrates a common unexpected behavior in Julia related to the way mutable objects are handled within functions due to pass-by-sharing.  The example showcases the difference in behavior between immutable and mutable types, highlighting potential pitfalls for new users.

## Bug Description
In Julia, arguments are passed by sharing.  This means that changes to mutable objects (like mutable structs) inside a function are reflected outside the function.  This can lead to unexpected behavior if the programmer is not aware of this mechanism.

## How to Reproduce
1. Clone this repository.
2. Run `bug.jl`. Observe the output, noting the behavior when modifying a mutable struct within a function. 
3. Run `bugSolution.jl` to see how to use `deepcopy` to correctly handle the mutable struct and avoid unintended side-effects.

## Solution
The solution is to use `deepcopy` function from the `deepcopy` package to create a copy of the mutable struct before modifying it in the function. This prevents the original object from being changed.