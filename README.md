# MemberFunctions

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://ClimFlows.github.io/MemberFunctions.jl/stable/)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://ClimFlows.github.io/MemberFunctions.jl/dev/)
[![Build Status](https://github.com/ClimFlows/MemberFunctions.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/ClimFlows/MemberFunctions.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Coverage](https://codecov.io/gh/ClimFlows/MemberFunctions.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/ClimFlows/MemberFunctions.jl)

## Example

```julia
    import MemberFunctions: WithMembers, member_functions

    # declare that `MyType` has member functions
    struct MyType <: WithMembers end
    member_functions(::Type{<:MyType}) = (; hello, goodbye)

    # implement member functions as normal Julia functions
    # taking the object as first argument
    hello(::MyType) = println("Hello !")
    goodbye(::MyType) = println("Goodbye !")

    # test
    o = MyType()
    o.hello()
    o.goodbye()
```
