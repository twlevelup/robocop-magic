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

		'Robot is at (' + x.to_s + ',' + y.to_s + ') facing '+location
	end


	def validCommand(command)
		if(command == 'F')
			return true
		else
			return false
		end
	end
end

