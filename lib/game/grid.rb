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
        row2: [:a1, :a2, :a3],
        row3: [:a1, :a2, :a3],
        row4: [:a1, :a2, :a3],
        row5: [:a1, :a2, :a3],
        row6: [:a1, :a2, :a3],
        row7: [:a1, :a2, :a3],
        row8: [:a1, :a2, :a3]
      }
    end

    def free_rows
      combinations = []
      @rows.each do |key, value|
        if @field[value[0]].nil?  and @field[value[1]].nil?  and @field[value[2]].nil?
          combinations << key
        end
      end
      combinations
    end

  end
end
