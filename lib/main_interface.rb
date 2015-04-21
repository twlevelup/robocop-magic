require './controller'

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
  if not c.validCommand(command)
    puts 'Command is not valid. Try again'
  end
end while   command != 'E'
puts 'command is ' + command
puts ''
puts c.printLocation