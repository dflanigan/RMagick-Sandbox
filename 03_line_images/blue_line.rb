#! /usr/bin/env ruby

require 'RMagick'

def add_a_circle(image_field)

  x_location = rand(image_field.columns)

  radius = rand(image_field.rows/20)
  if radius == 0 
    radius = 1
  end

  opacity = rand * 0.25

  width = rand(4)
  width += 1

  circle = Magick::Draw.new
  circle.stroke('blue')
  circle.fill_opacity(0)
  circle.stroke_opacity(opacity)
  circle.stroke_width(width)

  circle.ellipse(x_location,image_field.rows/2,radius,radius,0,360)
  circle.draw(image_field)
end

the_image = Magick::Image.new(1024,512) {
  self.background_color = 'black'
}

500.times do 
  add_a_circle(the_image)
end

the_image.display

exit


