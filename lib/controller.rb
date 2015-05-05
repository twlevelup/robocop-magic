require './lib/robocop'

class Controller

  $robots_array = Array.new
  $robot_id = 0

  def createRobot()
		@robot = Robocop.new
		'Robot is created'
	end

	def printLocation()
		x = @robot.getX
		y = @robot.getY
		location = @robot.getDirection

		case location
			when 'N'
				location = 'North'
			when 'S'
				location = 'South'
			when 'E'
				location = 'East'
			when 'W'
				location = 'West'
			else
				'Error: Invalid direction'
		end

		return 'Robot is at (' + x.to_s + ',' + y.to_s + ') facing '+location
	end

	def sendCommand(command)
		case command.upcase
			when 'F'
				if !@robot.moveForward()
					puts 'Your selected location is outside of the grid. The robot cannot move outside the grid.'
				end
				puts printLocation()
				 true
			when 'R'
				@robot.turn_right()
				puts printLocation()
				true
			when 'L'
				@robot.turn_left()
				puts printLocation()
				true
			when 'H'
				puts help
				true
			when 'N'
				puts addRobot
        true
			when 'A'
				true
			else
				false
		end
	end

	def help()
		return "Input 'R' to turn right \nInput 'L' to turn left \nInput 'F' to move forward \nInput 'E' to exit
Input 'N' for adding a robot\n\n"
	end

	def addRobot()
		@robot = Robocop.new
    $robots_array.insert($robot_id, @robot)
    $robot_id = $robot_id + 1
    $robots_array.to_s
	end

end

