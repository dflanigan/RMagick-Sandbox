#! /usr/bin/env ruby

require 'RMagick'

def add_a_circle(image_field)

  x_location = rand(image_field.columns)

  max_radius = image_field.rows/20

  radius = rand(max_radius)
  if radius == 0 
    radius = 1
  end

  if radius == max_radius
    new_radius = max_radius
  else
    new_radius = max_radius/(max_radius -  radius) 
  end

  opacity = rand * 0.4 + 0.1

  width = rand(4)
  width += 1

  circle = Magick::Draw.new
  circle.stroke('blue')
  circle.fill_opacity(0)
  circle.stroke_opacity(opacity)
  circle.stroke_width(width)

  circle.ellipse(x_location,image_field.rows/2,new_radius,new_radius,0,360)
  circle.draw(image_field)
end

the_image = Magick::Image.new(1680,1050) {
  self.background_color = 'black'
}

800.times do 
  add_a_circle(the_image)
end

the_image.display

exit


