#! /usr/bin/env ruby


require 'RMagick'

canvis = Magick::ImageList.new
canvis.new_image(512,512, Magick::HatchFill.new('white','gray90'))

circle = Magick::Draw.new

circle.stroke('blue')
circle.stroke_opacity(1.0)
circle.stroke_width(15)

circle.fill('blue')
circle.fill_opacity(0.25)

circle.ellipse(canvis.rows/2,canvis.columns/2,220,128,0,360)
circle.draw(canvis)

canvis.display

exit


