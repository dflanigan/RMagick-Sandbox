#! /usr/bin/env ruby

require 'RMagick'

def add_a_circle(image_field)

  x_location = rand(image_field.columns)

  y_location = image_field.rows/2

  radius = rand(image_field.rows/30)
  if radius == 0 
    radius = 1
  end

  opacity = rand * 0.25

  width = rand(5)
  width += 1

  circle = Magick::Draw.new
  hue = 360 * x_location/image_field.columns
  color_string = "hsl(#{hue},90,90)"
  circle.stroke(color_string)
  circle.fill_opacity(0)
  circle.stroke_opacity(opacity)
  circle.stroke_width(width)

  circle.ellipse(x_location,y_location,radius,radius,0,360)
  circle.draw(image_field)
end

the_image = Magick::Image.new(1680,1050) {
  self.background_color = 'black'
}

500.times do 
  add_a_circle the_image
end

title = Magick::Draw.new()
title.annotate(the_image,0,0,10,10,"500 Circles") {
  self.pointsize = 32
  self.fill = "white"
  self.gravity = Magick::NorthWestGravity
}

the_image.display

the_image.write "circle_hue_line.jpg"

exit


