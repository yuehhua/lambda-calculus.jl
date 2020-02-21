@testset "test Number" begin
    one = SUC(ZERO())
    two = SUC(SUC(ZERO()))

    @test repr(ZERO()) == "0"
    @test repr(one) == "1"
    @test repr(two) == "2"
end

@testset "test Add" begin
    one = SUC(ZERO())
    two = SUC(SUC(ZERO()))

    @test Add()(ZERO(), ZERO()) == ZERO()
    @test Add()(ZERO(), one) == one
    @test Add()(one, ZERO()) == one
    @test Add()(one, one) == two
end

@testset "test Sub" begin
    one = SUC(ZERO())
    two = SUC(SUC(ZERO()))

    @test Sub()(ZERO(), ZERO()) == ZERO()
    @test Sub()(one, ZERO()) == one
    @test Sub()(one, one) == ZERO()
    @test Sub()(two, one) == one
end
