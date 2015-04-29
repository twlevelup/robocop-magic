require './lib/controller'

RSpec.describe Controller do
	it "returns true when the command is F" do
		c = Controller.new	
	    expect(c.validCommand('F')).to eq(true)
	end
	it "returns false when the command is X" do
		c = Controller.new	
	    expect(c.validCommand('X')).to eq(false)
  end

	it "Given create robot it should create a robot" do
		c = Controller.new
		expect(c.createRobot()).to eq('Robot is created')
  end

	it "Given printLocation print the current location and direction of the robot" do
		c = Controller.new
    c.createRobot
		expect(c.printLocation()).to eq('Robot is at (0,0) facing North')
  end

end