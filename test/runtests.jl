import MemberFunctions: WithMembers, member_functions
using Test

# declare that `Say` has member functions
struct Say <: WithMembers
    you::String
end
member_functions(::Type{<:Say}) = (; hello, goodbye)

# implement member functions as normal Julia functions
# taking the object as first argument

"""
    hello(::Say)
    Say(yourname).hello()
"""
hello((;you)::Say) = println("Hello, $you !")
goodbye((;you)::Say) = println("Goodbye, $you !")

@testset "MemberFunctions.jl" begin
    say = Say("you")
    say.hello()   |> isnothing && @test true
    say.goodbye() |> isnothing && @test true
    show(Docs.doc(say.hello)) |> isnothing || @test true
    show(say.hello) |> isnothing || @test true
    @test_throws MethodError Docs.Binding(say, :you)
end
