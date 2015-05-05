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
			when 'A'
				if @robot.arrest()
					puts 'The robot has made an arrest'
				end
				true

			else
				false
		end
	end

end

