using LambdaCalculus
using Test

tests = [
    "bool",
    "operators",
    "numbers"
]

@testset "LambdaCalculus" begin
    for t in tests
        include("$(t).jl")
    end
end
