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
  it "when 10,10 is entered it controller accepts it as a valid input for changing robot coordinate =" do
		expect(@c.sendCommand('9,9')).to eq(true)
  end
  it "when a,b is entered it controller tell is an invalid command " do
		expect(@c.sendCommand('a,b')).to eq(false)
  end
  it "when 1a,b is entered it controller tell is an invalid command " do
		expect(@c.sendCommand('1a,b')).to eq(false)
  end
  it "when 1a,10 is entered it controller tell is an invalid command " do
		expect(@c.sendCommand('1a,10')).to eq(false)
  end
  it "when 1a0,10 is entered it controller tell is an invalid command " do
		expect(@c.sendCommand('1a0,10')).to eq(false)
  end
  it "when 10,10 is entered it controller tell is an invalid command " do
		expect(@c.sendCommand('10,10')).to eq(true)
  end
  it "when 11,10 is entered it controller tell is an invalid command " do
		expect(@c.sendCommand('11,10')).to eq(true)
  end

  it "when robot start in (0,0), and send to location (5,5), next instruction have to be move forward" do
  	expect(@c.nextInstruction(5,5)).to eq('Turn Right')
  end
  it "send to location (0,0), next instruction have to be no comand needed" do
  	expect(@c.nextInstruction(0,0)).to eq('no command needed')
  end

  it "send to location (1,0), next instruction have to be Move Forward" do
  	expect(@c.nextInstruction(1,0)).to eq('Turn Right')
  end
  it "send to location (1,0), loking at W next instruction have to be Move Forward" do
  	@c.sendCommand('r')
  	expect(@c.nextInstruction(1,0)).to eq('Move Forward')
  end

  it "Given a H as the command it should return a list of possible command for the robot" do
    expect(@c.sendCommand('H')).to eq(true)
  end

end