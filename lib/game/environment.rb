module Game
  class Environment
    attr_reader :shape_type

    def initialize(shape_type=:cross)
      @shape_type = shape_type
      @types = {
        nought: :cross,
        cross:  :nought
      }
    end

    def computer_shape_type
      @types[@shape_type]
    end
  end
end
