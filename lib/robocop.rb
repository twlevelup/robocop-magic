class Robocop

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

end
