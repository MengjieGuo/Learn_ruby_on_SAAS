#!/usr/local/bin/ruby -w
# -*- coding : utf-8 -*-

name = Array.new

puts name.size # Get the size of array
puts name.length # Get the length of array


names = Array.new(20)

puts names.size
puts names.length

names = Array.new(4, 'mac')

puts "#{names}" # Must use "" not ''

nums = Array.new(10) { |e| e=e*2 } # ?

puts "#{nums}"

nums = Array.[](1, 2, 3, 4, 5)

puts nums
puts "#{nums}"

nums = Array[1, 2, 3, 4, 5]

puts nums
puts "#{nums}"

digits = Array(0..9)

puts "#{digits}"

digits = Array(0..9)

num = digits.at(6)

puts "#{num}"


a = Array(0..10)
b = Array(10..20)
puts "#{a}, #{b}"
int_a = 2
str_a = '2'

# [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
result_a = a*int_a
puts "#{result_a}"

# 0212223242526272829210
result_b = a*str_a
puts "#{result_b}"

result_c = b <=> '3'
puts "#{result_c}"


array_a = [1, 2, 3]
array_b = [1, 3, 2]
puts array_a == array_b