require 'lib/fraccion'
require 'test/unit'


class TestFraccion < Test::Unit::TestCase
    def setup
        @frac1 = Fraccion.new(1,2)
    end

    def test_simple
        assert_equal("1/2", @frac1.to_s)
    end
end
