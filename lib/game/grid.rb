module Game
  class Grid
    attr_reader :field, :rows

    def initialize
      @field = {
        a1: nil, a2: nil, a3: nil,
        b1: nil, b2: nil, b3: nil,
        c1: nil, c2: nil, c3: nil
      }

      @rows = {
        row1: [:a1, :a2, :a3],
        row2: [:b1, :b2, :b3],
        row3: [:c1, :c2, :c3],
        row4: [:a1, :b2, :c3],
        row5: [:c1, :b2, :a3],
        row6: [:a1, :b1, :c1],
        row7: [:a2, :b2, :c2],
        row8: [:a3, :b3, :c3]
      }
    end

    def free_rows
      combinations = []
      @rows.each do |key, value|
        if @field[value[0]].nil? and @field[value[1]].nil? and @field[value[2]].nil?
          combinations << key
        end
      end
      combinations
    end

    def assign(coordinate, type)
      @field[coordinate] = type
    end
  end
end
