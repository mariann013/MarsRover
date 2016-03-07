module Direction

  def move_heading_N(y_value, heading, c)
    @y_value += 1   if c == 'M'
    @heading  = "W" if c == 'L'
    @heading  = "E" if c == 'R'
  end

  def move_heading_S(y_value, heading, c)
    @y_value -= 1   if c == 'M'
    @heading  = "E" if c == 'L'
    @heading  = "W" if c == 'R'
  end

  def move_heading_E(x_value, heading, c)
    @x_value += 1   if c == 'M'
    @heading  = "N" if c == 'L'
    @heading  = "S" if c == 'R'
  end

  def move_heading_W(x_value, heading, c)
    @x_value -= 1   if c == 'M'
    @heading  = "S" if c == 'L'
    @heading  = "N" if c == 'R'
  end

end
