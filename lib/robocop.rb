class Robocop
 @direction

    def beep
        'beep boop'
    end
		
		# 
		# Initialize the Robot, confirmed with the BA that 
		# the robot would start at (0,0) facing north
		#
		def initialize 
			@direction = 'N'
		end
		
		def set_direction (direction)
			@direction = direction
		end
		
		def turn_left
			case @direction
				when 'N'
					@direction = 'W' 
				when 'W'
					@direction = 'S'
				when 'S'
					@direction = 'E'
				when 'E'
					@direction = 'N'
				else
					'Error: Invalid direction'
			end
		end
		
		def turn_right
			turn_left
			turn_left
			turn_left
		end
=======

  def initialize()
    @x = 0
    @y = 0
    @direction = 'N'
  end

  def moveForward()
    if @direction == 'N'
      @y=@y+1
      return 'Robot move forward by 1 to north'
    end
  end

>>>>>>> 739bc84036390cce9a8f38499747b1c0bbead77a
end
