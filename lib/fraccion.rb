class Fraccion
    attr_reader :numer, :denom

    def gcd(x,y)
        if y==0 then x
        else gcd(y,x%y)
        end
    end

    def initialize(numer, denom)
        raise ZeroDivisionError, " denominator is cero " if denom.eql? 0
        d = gcd(numer, denom)
        @numer = numer / d
        @denom = denom / d
    end

    def to_s
        @numer.to_s + "/" + @denom.to_s
    end

    def ==(other)
        @numer == other.numer && @denom == other.denom
    end

    def !=(other)
        !(self == other)
    end

    def >(other)
        @numer/@denom > other.numer/other.denom
    end

    def <(other)
        @numer/@denom < other.numer/other.denom
    end

    def +(other)
        Fraccion.new(@numer*other.denom + other.numer*@denom, @denom*other.denom)
    end

    def -(other)
        Fraccion.new(@numer*other.denom - other.numer*@denom, @denom*other.denom)
    end

    def /(other)
        Fraccion.new(@numer*other.denom, @denom*other.numer)
    end

    def *(other)
        Fraccion.new(@numer*other.numer, @denom*other.denom)
    end
end

