

def CircleLine
  attr_writer :line_width, :maximun_radius, hue
  
  def initialize
    
  end

  def calculate(number_circles)

    circle_data = Array.new

    number_circles.times do

      this_circle = Hash.new

      this_circle[:x_coordinate] = rand(@line_width)
      this_circle[:radius]       = rand(@maximun_radius)
      this_circle[:hue]          = @hue

      circle_data.push this_circle
    end

    return circle_data

  end

end
