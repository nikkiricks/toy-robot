class Toyrobot
  def initialize(placement)
    @placement = placement
    get_x()
    get_y()
    get_facing()
  end

  def get_x
    @x = @placement.split[0].chars[0].to_i
  end

  def get_y
    @y = @placement.split[0].chars[2].to_i
  end

  def get_facing
    @facing = @placement[4..8]
  end
  
  def input
    @player_input = gets.chomp
    if @player_input == "REPORT"
      report()
    elsif @player_input == "RIGHT"
      right()
    elsif @player_input == "LEFT"
      left()
    elsif @player_input == "MOVE"
      move()
    end
  end

  def report
    puts "Output: #{@x},#{@y},#{@facing}"
    # puts Want to play again? hit y or n
  end

  def left
    # check what facing currently is then change direction counter clockwise
    if @facing == "NORTH" 
      @facing = "WEST"
    elsif @facing == "WEST" 
      @facing = "SOUTH"
    elsif @facing == "SOUTH" 
      @facing = "EAST"
    elsif @facing == "EAST" 
      @facing = "NORTH"
    end

    input()
  end

  def right
    # check what facing currently is then change direction clockwise
    if @facing == "NORTH"
      @facing = "EAST"
    elsif @facing == "EAST"
      @facing = "SOUTH"
    elsif @facing == "SOUTH"
      @facing = "WEST"
    elsif @facing == "WEST"
      @facing = "NORTH"
    end

    input()
  end

  def move
# check for edges so toy robot doesn't fall off the grid!
    if @facing == "NORTH" && @y == 4
      boundary_error_message()
    elsif @facing == "SOUTH" && @y == 0
      boundary_error_message()
    elsif @facing == "EAST" && @x == 4
      boundary_error_message() 
    elsif @facing == "WEST" && @x == 0
      boundary_error_message()
  # once edges are checked, help toy robot move 
    elsif @facing == "NORTH" && @y < 4
      @y = @y + 1
    elsif @facing == "SOUTH" && @y > 0
      @y = @y - 1
    elsif @facing == "EAST" && @x < 4
      @x = @x + 1
    elsif @facing == "WEST" && @x > 0
      @x = @x - 1
    else
      boundary_error_message()
    end
    input()
  end

  def boundary_error_message
    puts "oops, don't fall off the grid, try a different move"
  end
end
