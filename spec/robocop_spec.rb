require 'robocop'

RSpec.describe Robocop do

  it 'when F is entered move forward by 1 block' do
    d = Robocop.new
    expect(d.setCommand('F')).to eq('command is set to F')
  end

  it 'when R is entered get message Command not found' do
    d = Robocop.new
    expect(d.setCommand('R')).to eq('Command not found')
  end
<<<<<<< HEAD
	
	it "it should face west after starting the robot" do
		d = Robocop.new
    expect(d.turn_left).to eq('W')
	end
	
	it "it should face west when it turns left from north" do
		d = Robocop.new
		d.set_direction('N')
    expect(d.turn_left).to eq('W')
	end
	
	it "it should face south when it turns left from west" do
		d = Robocop.new
		d.set_direction('W')
    expect(d.turn_left).to eq('S')
	end
	
	it "it should face East when it turns left from South" do
		d = Robocop.new
		d.set_direction('S')
    expect(d.turn_left).to eq('E')
	end
	
	it "it should face North when it turns left from East" do
		d = Robocop.new
		d.set_direction('E')
    expect(d.turn_left).to eq('N')
	end
	
	it "It should show error if the direction is not [N,S,E,W]" do
		d = Robocop.new
		d.set_direction('X')
    expect(d.turn_left).to eq('Error: Invalid direction')
	end
	
	it "it should face East after starting the robot" do
		d = Robocop.new
    expect(d.turn_right).to eq('E')
	end 
	
	it "it should face east when it turns right from north" do
		d = Robocop.new
		d.set_direction('N')
    expect(d.turn_right).to eq('E')
	end
	
	it "it should face south when it turns right from east" do
		d = Robocop.new
		d.set_direction('E')
    expect(d.turn_right).to eq('S')
	end
	
	it "it should face West when it turns right from South" do
		d = Robocop.new
		d.set_direction('S')
    expect(d.turn_right).to eq('W')
	end
	
	it "it should face North when it turns right from West" do
		d = Robocop.new
		d.set_direction('W')
    expect(d.turn_right).to eq('N')
	end
	
	it "It should show error if the direction is not [N,S,E,W]" do
		d = Robocop.new
		d.set_direction('X')
    expect(d.turn_right).to eq('Error: Invalid direction')
	end
=======

  it 'robot tell us it finish moving forward we should get location' do

  end

>>>>>>> 739bc84036390cce9a8f38499747b1c0bbead77a
end
