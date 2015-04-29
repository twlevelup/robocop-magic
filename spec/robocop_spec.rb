require 'robocop'

RSpec.describe Robocop do

	before(:each) do
	@d = Robocop.new
	end

	it "places the robot at x = 1 when running set_x(1)" do
	  @d.set_x(1)
	  expect(@d.getX()).to eq(1)
	  expect(@d.getY()).to eq(0)
	end
	
	it "places the robot at y = 1 when running set_y(1)" do
	  @d.set_y(1)
	  expect(@d.getX()).to eq(0)
	  expect(@d.getY()).to eq(1)
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
	@d.moveForward()
	expect(@d.getX()).to eq(0)
	expect(@d.getY()).to eq(1)
	end

	it "if robot is facing east it should move forward east by 1 unit" do
	@d.set_direction('E')
	@d.moveForward()
	expect(@d.getX()).to eq(1)
	expect(@d.getY()).to eq(0)
	end

	it "if robot is facing west it should move forward west by 1 unit" do
	@d.set_direction('W')
	@d.set_x(1)
	@d.moveForward()
	expect(@d.getX()).to eq(0)
	expect(@d.getY()).to eq(0)
	end

	it "if robot is facing south it should move forward south by 1 unit" do
	@d.set_direction('S')
	@d.set_y(1)
	@d.moveForward()
	expect(@d.getX()).to eq(0)
	expect(@d.getY()).to eq(0)
	end

	it "It should show False if when moving north from the edge" do
		@d.set_x(0)
		@d.set_y(10)
		@d.set_direction('N')
		expect(@d.canMoveForward()).to eq(false)
	end

	it "It should show True if when moving north from the grid" do
		@d.set_x(0)
		@d.set_y(5)
		@d.set_direction('N')
		expect(@d.canMoveForward()).to eq(true)
	end

	it "It should show False if when moving South from the edge" do
		@d.set_y(0)
		@d.set_direction('S')
		expect(@d.canMoveForward()).to eq(false)
	end
	it "It should show True if when moving South from the grid" do
		@d.set_y(7)
		@d.set_direction('S')
		expect(@d.canMoveForward()).to eq(true)
	end

	it "It should show false if when moving East from the edge" do
		@d.set_x(10)
		@d.set_direction('E')
		expect(@d.canMoveForward()).to eq(false)
	end
	it "It should show true if when moving East from the grid" do
		@d.set_x(8)
		@d.set_direction('E')
		expect(@d.canMoveForward()).to eq(true)
	end
	it "It should show false if when moving West from the edge" do
		@d.set_x(0)
		@d.set_direction('W')
		expect(@d.canMoveForward()).to eq(false)
	end

	it "It should show true if when moving West from the grid" do
		@d.set_x(5)
		@d.set_direction('W')
		expect(@d.canMoveForward()).to eq(true)
	end
	
	it "if robot is facing west on the origin it should not move forward" do
	@d.set_direction('W')
	expect(@d.moveForward()).to eq(false)
	end
	
	it "if robot is facing east on the eastern boundary it should not move forward" do
	@d.set_direction('E')
	@d.set_x(10)
	expect(@d.moveForward()).to eq(false)
	end
	
	it "if robot is facing south on the origin it should not move forward" do
	@d.set_direction('S')
	expect(@d.moveForward()).to eq(false)
	end
	
	it "if robot is facing north on the northern boundary it should not move forward" do
	@d.set_direction('N')
	@d.set_y(10)
	expect(@d.moveForward()).to eq(false)
	end
end
