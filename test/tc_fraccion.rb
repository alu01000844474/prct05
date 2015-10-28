require 'lib/fraccion'
require 'test/unit'


class TestFraccion < Test::Unit::TestCase
    def setup
        @frac1by2 = Fraccion.new(1,2)
        @frac2by3 = Fraccion.new(2,3)
    end

    def test_simple
        assert_equal("1/2", @frac1by2.to_s)
        assert_equal("1/1", Fraccion.new(5,5).to_s)
        assert_raise(RuntimeError) {Fraccion.new(4,0)}
    end

    def test_comparation
        assert_equal(true, Fraccion.new(10,10) == Fraccion.new(10,10))
        assert_equal(true, Fraccion.new(10,10) == Fraccion.new(1,1))
        assert_equal(true, Fraccion.new(1,2) != Fraccion.new(1,1))
        assert_equal(false, @frac2by3 < @frac1by2)
        assert_equal(true, Fraccion.new(5,1) > @frac1by2)
    end

    def test_operators_sum
        assert_equal("7/6",(@frac1by2+@frac2by3).to_s)
        assert_equal("7/6",(@frac2by3+@frac1by2).to_s)
    end

    def test_operators_resta
        assert_equal("-1/6",(@frac1by2-@frac2by3).to_s)
        assert_equal("1/6",(@frac2by3-@frac1by2).to_s)
    end

    def test_div_and_mult
        assert_equal(Fraccion.new(1,3), @frac1by2 * @frac2by3)
        assert_equal(Fraccion.new(3,4),@frac1by2 / @frac2by3)
        assert_equal(@frac1by2, @frac1by2 / @frac2by3 * @frac2by3)
    end
end
