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
end

