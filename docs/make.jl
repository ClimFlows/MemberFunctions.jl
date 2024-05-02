using MemberFunctions
using Documenter

DocMeta.setdocmeta!(MemberFunctions, :DocTestSetup, :(using MemberFunctions); recursive=true)

makedocs(;
    modules=[MemberFunctions],
    authors="The ClimFlows contributors",
    sitename="MemberFunctions.jl",
    format=Documenter.HTML(;
        canonical="https://ClimFlows.github.io/MemberFunctions.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/ClimFlows/MemberFunctions.jl",
    devbranch="main",
)
