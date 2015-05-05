require 'controller'

RSpec.describe Controller do

	before(:each) do
	@c = Controller.new	
		@c.createRobot
	end

	it "returns true when the command is F" do
	    expect(@c.sendCommand('F')).to eq(true)
	end
	it "returns true when the command is f" do
	    expect(@c.sendCommand('f')).to eq(true)
	end
	it "returns true when the command is r" do
	    expect(@c.sendCommand('f')).to eq(true)
	end
	it "returns true when the command is l" do
	    expect(@c.sendCommand('f')).to eq(true)
	end

	it "returns true when the command is a" do
	    expect(@c.sendCommand('f')).to eq(true)
	end

	it "returns true when the command is A" do
	    expect(@c.sendCommand('A')).to eq(true)
	end

	it "returns true when the command is R" do
	    expect(@c.sendCommand('R')).to eq(true)
	end

	it "returns true when the command is L" do
	    expect(@c.sendCommand('L')).to eq(true)
	end

	it "returns false when the command is X" do
	    expect(@c.sendCommand('X')).to eq(false)
  end

	it "Given create robot it should create a robot" do
		expect(@c.createRobot()).to eq('Robot is created')
  end

	it "Given printLocation print the current location and direction of the robot" do
		expect(@c.printLocation()).to eq('Robot is at (0,0) facing North')
  end

  it "Given a H as the command it should return a list of possible command for the robot" do
    expect(@c.sendCommand('H')).to eq(true)
  end

end