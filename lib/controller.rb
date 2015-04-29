require './lib/robocop'

class Controller

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
		if validCommand(command)	
			case command
				when 'F'
					if 'it did not move forward' != @robot.moveForward()
						puts printLocation()
						true	
					else
						puts 'Your selected location is outside of the grid. The robot cannot move outside the grid.'
						puts printLocation()
						true
					end
				when 'R'
					@robot.turn_right()
					puts printLocation()
					true
				when 'L'
					@robot.turn_left()
					puts printLocation()
					true
			end
		else
			false
		end
	end

	def validCommand(command)
		if(command == 'F' || command == 'R' || command == 'L')
			return true
		else
			return false
		end
	end
end

