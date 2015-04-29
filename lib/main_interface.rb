require './lib/controller'

c = Controller.new
c.createRobot

puts 'Welcome to Robocop controller'
puts ''
puts 'Connected to robot'
puts ''
puts c.printLocation
puts ''
begin
  print 'Please enter command: '
  puts ''
  STDOUT.flush
  command = gets.chomp
  if !c.sendCommand(command) && command.upcase != 'E'
    puts 'Command is not valid. Try again'
  end
end while   command.upcase != 'E'
