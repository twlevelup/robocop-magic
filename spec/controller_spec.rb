require 'controller'

RSpec.describe Controller do
	it "returns true when the command is F" do
		c = Controller.new	
	    expect(c.validCommand('F')).to eq(true)
	end
	it "returns false when the command is X" do
		c = Controller.new	
	    expect(c.validCommand('X')).to eq(false)
	end
end