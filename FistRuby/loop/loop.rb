#!/usr/bin/ruby
# -*- coding: UTF-8 -*-

$i = 0
$num = 5

while $i < $num  do
   puts("在循环语句中 i = #$i" )
   $i +=1
end


# 如果 while 修饰符跟在一个没有 rescue 或 ensure 子句的 begin 语句后面，code 会在 conditional 判断之前执行一次。

$i = 0
$num = 5
begin
   puts("在循环语句中 i = #$i" )
   $i +=1
end while $i < $num

puts "\n"


$i = 0
$num = 5

until $i > $num  do
   puts("在循环语句中 i = #$i" )
   $i +=1;
end

puts "\n"

$i = 0
$num = 5
begin
   puts("在循环语句中 i = #$i" )
   $i +=1;
end until $i > $num


puts "\nFOR"

for i in 0..5
    puts "局部变量的值为 #{i}"
 end

 puts "\n"

 (0..5).each do |i|
    puts "局部变量的值为 #{i}"
 end


 puts "\nBREAK"

 for i in 0..5
    if i > 2 then
       break
    end
    puts "局部变量的值为 #{i}"
 end

 puts "\nNEXT"

 for i in 0..5
    if i < 2 then
       next
    end
    puts "局部变量的值为 #{i}"
 end

 puts "\nREDO"

# for i in 0..5
#     if i < 2 then
#        puts "局部变量的值为 #{i}"
#        redo
#     end
# end
# puts "\nREDO"

# for i in 0..5
#     if i < 2 then
#        puts "局部变量的值为 #{i}"
#        redo
#     end
#  end

n = 0
begin
  puts 'Trying to do something'
  raise 'oops'
rescue => ex
  puts ex
  n += 1
  retry if n < 3
end
puts "Ok, I give up"