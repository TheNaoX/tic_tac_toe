module Game
  class Grid
    attr_reader :field

    def initialize
      @field = {
        a1: nil, a2: nil, a3: nil,
        b1: nil, b2: nil, b3: nil,
        c1: nil, c2: nil, c3: nil
      }
    end

    def free_rows
      Array.new(8)
    end

  end
end
