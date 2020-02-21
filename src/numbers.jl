abstract type INTEGER end
struct ZERO <: INTEGER end
struct SUC <: INTEGER
    N::INTEGER
end

struct Add end

(a::Add)(x::ZERO, y::ZERO) = ZERO()
(a::Add)(x::ZERO, y::SUC) = y
(a::Add)(x::SUC, y::ZERO) = x
(a::Add)(x::SUC, y::SUC) = SUC(Add()(x.N, y))

show(io::IO, ::ZERO, acc::Int=0) = print(io, "$acc")
show(io::IO, s::SUC, acc::Int=0) = show(io, s.N, acc+1)

struct Sub end

(s::Sub)(x::ZERO, y::ZERO) = ZERO()
(s::Sub)(x::SUC, y::ZERO) = x
(s::Sub)(x::SUC, y::SUC) = Sub()(x.N, y.N)
(s::Sub)(x::ZERO, y::SUC) = throw("Negative numbers are not supported.")
