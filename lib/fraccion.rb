class Fraccion
    attr_accessor :numer, :denom

    def initialize(numer, denom)
        @numer = numer
        @denom = denom
    end

    def to_s
        @numer.to_s + "/" + @denom.to_s
    end
end

