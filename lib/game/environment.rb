module Game
  class Environment
    attr_reader :shape_type
    def initialize(shape_type)
      @shape_type = shape_type
    end

    def computer_shape_type
      case @shape_type
      when :cross
        return :nought
      when :nought
        return :cross
      else
        raise Exception, "did you forget to assign the type first?"
      end
    end
  end
end
