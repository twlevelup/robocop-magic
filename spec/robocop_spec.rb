require 'robocop'

RSpec.describe Robocop do

  it 'should move forward by 1 block north when robot is facing north' do
    #create a robot that is facing north
    #tell it to move forward
    #make sure that its location has changed
    d = Robocop.new
    expect(d.moveForward()).to eq('Robot move forward by 1 to north')
 expect()
  end

  # it 'should move forward by 1 block south when robot is facing south' do
      @testy = 10
      @finaly = 11

      @d = Robocop.new(0, @testy, 'S')

     expect(d.moveForward()).eq('robot move forward by 1 to south')
     expect(d.gety).eq('robot move forward by 1 to south');

  # end

end
