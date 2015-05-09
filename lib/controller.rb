require './lib/robocop'

class Controller

  $robots_array = Array.new
  $robot_id = 0

 	#def initialize()
 	#	addRobot()
 	#	addRobot()
 	#	addRobot()
 	#	@robot =  $robots_array[1]
 	#	listAllrobors()
  	#end

 	def createRobot()
		@robot = Robocop.new
		'Robot is created'
	end

	def listAllrobors()
		#$robots_array.each { |robot| puts @robot=robot, 'Robot '+@robot.getId.to_s+' '+printLocation }
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
					puts 'Your selected location is outside of the grid.'
					puts ''
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
			#when 'N'
			#	puts addRobot
            #    true
			#when 'A'
			#	if @robot.arrest()
			#		puts 'The robot has made an arrest'
			#	end
			#	true
			else
				commandArray = command.split(',')
				if (commandArray.length == 2)
				 	if /\A[-+]?\d+\z/.match(commandArray[0]) and /\A[-+]?\d+\z/.match(commandArray[1])
				 		x = commandArray[0].to_i
				 		y = commandArray[1].to_i
				 		if @robot.checkcoordinates(x , y)
				 			nextInst = nextInstruction(x , y)

				 			direction = @robot.getDirection
				 			while (nextInst != 'no command needed')
					 			nextInst = nextInstruction(x , y)
					 			
					 			case nextInst
					 				when 'Move Forward' 
					 					@robot.moveForward()
					 				when 'Turn Right'
					 					@robot.turn_right()
					 			end
					 			if nextInst != 'no command needed'
					 				puts printLocation()
					 			end
				 			end	
				 			while(@robot.getDirection != direction)
				 				@robot.turn_right()
				 				puts printLocation()
				 			end


				 			true
				 		else
				 			puts "The coordinates are out of the grid"
				 			true
				 		end
					else
					      puts "Please enter valid coordinates"
					      false
					end  
				else 
					false
				end
		end
	end

	def help()
		return "Input 'R' to turn right \nInput 'L' to turn left \nInput 'F' to move forward 
Input '#,#'' to move the robot to a specific coordinate. Eg: 1,5\nInput 'E' to exit \n\n"
	end

	def addRobot()
		robot = Robocop.new
		$robot_id = $robot_id + 1
		robot.set_id($robot_id)
    	$robots_array.insert($robot_id, robot)
    	$robots_array.to_s
    end

	def nextInstruction (x , y)
		 if @robot.getX() == x
		 	if @robot.getY() == y
		 		return 'no command needed'
		 	else
		 		if @robot.getY() > y 
		 		if @robot.getDirection() == 'S'
		 			return 'Move Forward'
		 		else
		 			return 'Turn Right'
		 		end
		 	else
		 		if @robot.getDirection() == 'N'
		 			return 'Move Forward'
		 		else
		 			return 'Turn Right'
		 		end
		 	end

		 	end
		 else
		 	if @robot.getX() > x 
		 		if @robot.getDirection() == 'W'
		 			return 'Move Forward'
		 		else
		 			return 'Turn Right'
		 		end
		 	else
		 		if @robot.getDirection() == 'E'
		 			return 'Move Forward'
		 		else
		 			return 'Turn Right'
		 		end
		 	end
		 end
	end
end

