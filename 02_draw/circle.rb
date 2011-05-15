#! /usr/bin/env ruby


require 'RMagick'

canvis = Magick::ImageList.new
canvis.new_image(512,512, Magick::HatchFill.new('white','gray90'))

circle = Magick::Draw.new
circle.stroke('tomato')
circle.fill_opacity(0)
circle.stroke_opacity(0.75)
circle.stroke_width(15)
circle.ellipse(canvis.rows/2,canvis.columns/2,128,128,0,360)
circle.draw(canvis)

canvis.display

exit


