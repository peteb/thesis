#!/usr/bin/env ruby
# gem install json

require 'rubygems'
require 'json'

ARGV.each do |x|
	puts JSON.pretty_generate(JSON.parse(IO.read(x)))
end