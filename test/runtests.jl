import MemberFunctions: WithMembers, member_functions
using Test

# declare that `MyType` has member functions
struct MyType <: WithMembers end
member_functions(::Type{<:MyType}) = (; hello, goodbye)

# implement member functions as normal Julia functions
# taking the object as first argument

"""
    hello(::MyType)
    MyType().hello()
"""
hello(::MyType) = println("Hello !")
goodbye(::MyType) = println("Goodbye !")

@testset "MemberFunctions.jl" begin
    o = MyType()
    o.hello()   |> isnothing && @test true
    o.goodbye() |> isnothing && @test true
    show(Docs.doc(o.hello))
    show(o.hello)
end
