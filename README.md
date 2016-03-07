# Mars Rover - Mari-Ann Meling

I completed the Mars Rover task in Ruby. I used two classes, a Rover class,
which contained a Directions module and a Grid class. I approached the problem
using TDD and used rspec to test the code.

Here is an example interaction with my application in irb:

```
grid = Grid.new(10, 10, Rover)
grid.add_rover(2, 3, 'N')
grid.move_rover('LMMRRM')
=> 1 3 E

```

I assumed that if the Rover was given a list of commands that took it off the
grid it would raise an error.
