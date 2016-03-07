require 'Grid.rb'

describe Grid do

  let(:rover){ double :rover, new: Rover.new(2, 2, 'N'), move: true,  x_value: 2, y_value: 2, heading: 'N' }
  subject(:grid) { described_class.new(10, 10, rover)}

  it 'should initialize with a grid with a x maximum value' do
    expect(grid.x_max).to eq 10
  end

  it 'should add a rover to the array of rovers' do
    grid.add_rover(3, 4, 'N')
    expect(grid.rovers.length).to eq 1
  end

  it 'should not let you move a rover out of the grid' do
    grid.add_rover(9, 9, 'N')
    expect{ grid.move_rover('MM') }.to raise_error "Sorry, that move would take the rover off the grid!"
  end

end
