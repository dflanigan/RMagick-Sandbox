#! /usr/bin/env ruby

require 'RMagick'
include Magick

dutch = ImageList.new("dutch.jpg")
dutch.display
exit

