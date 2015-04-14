class Robocop
  @direction

    def beep
        'beep boop'
    end
		
		# 
		# Initialize the Robot, confirmed with the BA that 
		# the robot would start at (0,0) facing north
		#
		
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

  def initialize
    @x = 0
    @y = 0
    @direction = 'N'
  end

  def getX
    return @x
  end

  def getY
    return @y
  end

  def moveForward

    if @direction == 'N'
        @y = @y + 1
        'moved forward north by 1 unit'
    elsif @direction == 'E'
        @x = @x + 1
        'moved forward east by 1 unit'
    elsif @direction == 'W'
        @x = @x - 1
      'moved forward west by 1 unit'
    else
      @y = @y - 1
      'moved forward south by 1 unit'
    end
  end

end
