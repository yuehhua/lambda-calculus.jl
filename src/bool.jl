abstract type BOOL end
struct TRUE <: BOOL end
struct FALSE <: BOOL end

(t::TRUE)(x::BOOL, y::BOOL) = x
(f::FALSE)(x::BOOL, y::BOOL) = y

show(io::IO, ::TRUE) = print(io, "true")
show(io::IO, ::FALSE) = print(io, "false")
