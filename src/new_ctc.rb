#!/usr/bin/env ruby -wKU

dirpath = ARGV[0]
file = ARGV[1]
libs = ARGV[2..-1]

puts "Dir: " + dirpath
puts "File: " + file
puts "Libs: " + libs.to_s

print dirpath
