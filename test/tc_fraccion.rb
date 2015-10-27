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
        # assert_raise_with_name(ZeroDivisionError,"",Fraccion.new(4,0))
    end

    def test_operators_sum
        assert_equal("7/6",(@frac1by2+@frac2by3).to_s)
        assert_equal("7/6",(@frac2by3+@frac1by2).to_s)
    end

    def test_operators_resta
        assert_equal("-1/6",(@frac1by2-@frac2by3).to_s)
        assert_equal("1/6",(@frac2by3-@frac1by2).to_s)
    end
end
