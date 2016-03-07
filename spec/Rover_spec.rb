require 'Rover.rb'

describe Rover do

  subject(:rover) { described_class.new(0, 0, 'N')}

  context 'initialized values' do
    it 'should initialize with given heading' do
      expect(rover.heading).to eq "N"
    end

    it 'should initalize with given x value' do
      expect(rover.x_value).to eq 0
    end

    it 'should initalize with given y value' do
      expect(rover.y_value).to eq 0
    end
  end

  context 'responding to directions' do
    it 'should change the y value by +1 when passed M and facing N' do
      rover.move('M')
      expect(rover.y_value).to eq 1
    end

    it 'should change the x value by +1 when passed M and facing E' do
      rover.move('RM')
      expect(rover.x_value).to eq 1
    end

    it 'should change the heading to E when facing N and passed R' do
      rover.move('R')
      expect(rover.heading).to eq 'E'
    end

    it 'should change the heading to W when facing N and passed L' do
      rover.move('L')
      expect(rover.heading).to eq 'W'
    end
  end

  context 'test cases' do
    it 'test case 1 x value' do
      roverTest1 = Rover.new(1, 2, "N")
      roverTest1.move('LMLMLMLMM')
      expect(roverTest1.x_value).to eq 1
    end

    it 'test case 1 y value' do
      roverTest1 = Rover.new(1, 2, "N")
      roverTest1.move('LMLMLMLMM')
      expect(roverTest1.y_value).to eq 3
    end

    it 'test case 1 heading' do
      roverTest1 = Rover.new(1, 2, "N")
      roverTest1.move('LMLMLMLMM')
      expect(roverTest1.heading).to eq "N"
    end

    it 'test case 2 x value' do
      roverTest2 = Rover.new(3, 3, "E")
      roverTest2.move('MMRMMRMRRM')
      expect(roverTest2.x_value).to eq 5
    end

    it 'test case 2 y value' do
      roverTest2 = Rover.new(3, 3, "E")
      roverTest2.move('MMRMMRMRRM')
      expect(roverTest2.y_value).to eq 1
    end

    it 'test case 2 heading' do
      roverTest2 = Rover.new(3, 3, "E")
      roverTest2.move('MMRMMRMRRM')
      expect(roverTest2.heading).to eq "E"
    end
  end

end
