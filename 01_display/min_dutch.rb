#! /usr/bin/env ruby

require 'RMagick'
include Magick

dutch = ImageList.new("dutch.jpg")
small_dutch = dutch.minify
small_dutch.display
small_dutch.write("small_dutch.gif")
exit

