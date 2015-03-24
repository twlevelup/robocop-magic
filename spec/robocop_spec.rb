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

  it 'robot tell us it finish moving forward we should get location' do

  end

end
