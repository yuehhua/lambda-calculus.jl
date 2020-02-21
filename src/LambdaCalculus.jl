module LambdaCalculus
    import Base: show

    export
        BOOL,
        TRUE,
        FALSE,
        And,
        Or,
        Not,
        Eq,
        Xor,

        ZERO,
        SUC,
        Add,
        Sub

    include("bool.jl")
    include("operators.jl")
    include("numbers.jl")

end # module
