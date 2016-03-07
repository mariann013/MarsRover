require_relative 'Rover.rb'

class Grid

attr_reader :x_max, :y_max, :rover, :rovers

  def initialize(x, y, rover_klass)
    @x_max = x
    @y_max = y
    @rover = rover_klass
    @rovers = []
  end

  def add_rover(x, y, heading)
    rovers << @rover.new(x, y, heading)
  end

  def move_rover(directions)
      rover = rovers.first
      rover.move(directions)
      if in_bounds?(rover)
        puts "#{rover.x_value} #{rover.y_value} #{rover.heading}"
        rovers.pop
      else
        raise "Sorry, that move would take the rover off the grid!"
      end
  end

  def in_bounds?(rover)
    rover.x_value < x_max && rover.y_value < y_max
  end

end
