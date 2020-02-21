struct And end

(a::And)(x::BOOL, y::BOOL) = x(y, FALSE())


struct Or end

(o::Or)(x::BOOL, y::BOOL) = x(TRUE(), y)


struct Not end

(n::Not)(x::BOOL) = x(FALSE(), TRUE())


struct Eq end

(e::Eq)(x::BOOL, y::BOOL) = x(y, Not()(y))


struct Xor end

(o::Xor)(x::BOOL, y::BOOL) = Not()(Eq()(x, y))
