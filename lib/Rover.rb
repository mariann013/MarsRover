require_relative 'Direction.rb'

class Rover

include Direction
attr_reader  :y_value, :x_value, :heading

  def initialize(x, y, heading)
    @x_value = x
    @y_value = y
    @heading = heading
  end

  def move(directions)
    directions.split(//).each do |c|
      navigation(c)
    end
  end

private

    def navigation(c)
      if north?
        move_heading_N(y_value, heading, c)
      elsif south?
        move_heading_S(y_value, heading, c)
      elsif east?
        move_heading_E(x_value, heading, c)
      else
        move_heading_W(x_value, heading, c)
      end
    end

    def north?
      @heading == "N"
    end

    def south?
      @heading == "S"
    end

    def east?
      @heading == "E"
    end

    def west?
      @heading == "W"
    end

end
