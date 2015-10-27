require 'lib/fraccion'
require 'test/unit'


class TestFraccion < Test::Unit::TestCase
    def setup
        @frac1 = Fraccion.new(1,2)
    end

    def test_simple
        assert_equal("1/2", @frac1.to_s)
        assert_equal("1/1", Fraccion.new(5,5).to_s)
        # assert_raise_with_name(ZeroDivisionError,"",Fraccion.new(4,0))
    end
end
