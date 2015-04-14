require 'robocop'

RSpec.describe Robocop do

  before(:each) do
    @d = Robocop.new
  end

	it "it should face west after starting the robot" do
    expect(@d.turn_left).to eq('W')
	end
	
	it "it should face west when it turns left from north" do
		@d.set_direction('N')
    expect(@d.turn_left).to eq('W')
	end
	
	it "it should face south when it turns left from west" do
		@d.set_direction('W')
    expect(@d.turn_left).to eq('S')
	end
	
	it "it should face East when it turns left from South" do
		@d.set_direction('S')
    expect(@d.turn_left).to eq('E')
	end
	
	it "it should face North when it turns left from East" do
		@d.set_direction('E')
    expect(@d.turn_left).to eq('N')
	end
	
	it "It should show error if the direction is not [N,S,E,W]" do
		@d.set_direction('X')
    expect(@d.turn_left).to eq('Error: Invalid direction')
	end
	
	it "it should face East after starting the robot" do
    expect(@d.turn_right).to eq('E')
	end 
	
	it "it should face east when it turns right from north" do
		@d.set_direction('N')
    expect(@d.turn_right).to eq('E')
	end
	
	it "it should face south when it turns right from east" do
		@d.set_direction('E')
    expect(@d.turn_right).to eq('S')
	end
	
	it "it should face West when it turns right from South" do
		@d.set_direction('S')
    expect(@d.turn_right).to eq('W')
	end
	
	it "it should face North when it turns right from West" do
		@d.set_direction('W')
    expect(@d.turn_right).to eq('N')
	end
	
	it "It should show error if the direction is not [N,S,E,W]" do
		@d.set_direction('X')
    expect(@d.turn_right).to eq('Error: Invalid direction')
  end

  it "if robot is facing north it should move forward north by 1 unit" do
    expect(@d.getX()).to eq(0)
    expect(@d.getY()).to eq(0)
    expect(@d.moveForward()).to eq('moved forward north by 1 unit')
    expect(@d.getX()).to eq(0)
    expect(@d.getY()).to eq(1)
  end

  it "if robot is facing east it should move forward east by 1 unit" do
    @d.set_direction('E')
    expect(@d.getX()).to eq(0)
    expect(@d.getY()).to eq(0)
    expect(@d.moveForward()).to eq('moved forward east by 1 unit')
    expect(@d.getX()).to eq(1)
    expect(@d.getY()).to eq(0)
  end

  it "if robot is facing west it should move forward west by 1 unit" do
    @d.set_direction('W')
    expect(@d.getX()).to eq(0)
    expect(@d.getY()).to eq(0)
    expect(@d.moveForward()).to eq('moved forward west by 1 unit')
    expect(@d.getX()).to eq(-1)
    expect(@d.getY()).to eq(0)
  end

  it "if robot is facing south it should move forward south by 1 unit" do
    @d.set_direction('S')
    expect(@d.getX()).to eq(0)
    expect(@d.getY()).to eq(0)
    expect(@d.moveForward()).to eq('moved forward south by 1 unit')
    expect(@d.getX()).to eq(0)
    expect(@d.getY()).to eq(-1)
  end

end
