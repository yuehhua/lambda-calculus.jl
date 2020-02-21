@testset "test And" begin
    @test And()(TRUE(), TRUE()) == TRUE()
    @test And()(TRUE(), FALSE()) == FALSE()
    @test And()(FALSE(), TRUE()) == FALSE()
    @test And()(FALSE(), FALSE()) == FALSE()
end

@testset "test Or" begin
    @test Or()(TRUE(), TRUE()) == TRUE()
    @test Or()(TRUE(), FALSE()) == TRUE()
    @test Or()(FALSE(), TRUE()) == TRUE()
    @test Or()(FALSE(), FALSE()) == FALSE()
end

@testset "test Not" begin
    @test Not()(TRUE()) == FALSE()
    @test Not()(FALSE()) == TRUE()
end

@testset "test Eq" begin
    @test Eq()(TRUE(), TRUE()) == TRUE()
    @test Eq()(TRUE(), FALSE()) == FALSE()
    @test Eq()(FALSE(), TRUE()) == FALSE()
    @test Eq()(FALSE(), FALSE()) == TRUE()
end

@testset "test Xor" begin
    @test Xor()(TRUE(), TRUE()) == FALSE()
    @test Xor()(TRUE(), FALSE()) == TRUE()
    @test Xor()(FALSE(), TRUE()) == TRUE()
    @test Xor()(FALSE(), FALSE()) == FALSE()
end
