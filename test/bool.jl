@testset "test Bool" begin
    t = TRUE()
    f = FALSE()
    @test repr(t) == "true"
    @test repr(f) == "false"
end
