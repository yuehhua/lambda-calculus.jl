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
