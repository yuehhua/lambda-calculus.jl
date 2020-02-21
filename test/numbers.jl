@testset "test Add" begin
    one = SUC(ZERO())
    two = SUC(SUC(ZERO()))
    @test Add()(ZERO(), ZERO()) == ZERO()
    @test Add()(ZERO(), one) == one
    @test Add()(one, ZERO()) == one
    @test Add()(one, one) == two
    @test repr(ZERO()) == "0"
    @test repr(one) == "1"
    @test repr(two) == "2"
end
