#!/usr/local/bin/ruby -w
# -*- coding : utf-8 -*-

###############################################################
# Part 1
###############################################################

# Define a method 
# Accept an array
# Return the sum of array's element
# When the length of array is Zero, return Zero.
def sum (an_array)
    "Accept an array and return the sum of elements"
    if an_array.length == 0
        return 0
    end
    sum_ = 0
    an_array.each { |x| sum_+=x }
    return sum_
end

# Test case
# array_0 = []
# array_a = [1 ,2 ,3 ,4]
# result = sum array_0
# puts result
# result = sum array_a
# puts result

def max_2_sum (an_array)
    "Accept an array and return the sum of the bigget two elemet's"
    if an_array.length == 0
        return 0
    elsif an_array.length == 1
        return an_array[0]
    else
        tm_array = an_array.sort.reverse
        return tm_array[0] + tm_array[1]
    end
end

# Test case
# array_0 = []
# array_1 = [16]
# array_a = [1 ,2 ,3 ,4, 10 ,20]
# array_b = [111 ,2 ,3 ,4, 10 ,20]
# result = max_2_sum array_0
# puts result
# result = max_2_sum array_1
# puts result
# result = max_2_sum array_a
# puts result
# result = max_2_sum array_b
# puts result


def sum_to_n (array_n, n)
    "Accept an array and n, return true if there has two element which sum is n;
    Else if array_n is null and n is 0, return true also

    There has a Double loop
    "
    if array_n.length == 0 and n == 0
        return true
    end


    i = 0
    len_array = array_n.length
    array_n.each do |x|
        i += 1
        array_n[i..len_array].each do |y|
            if x + y == n
                return true
            end
        end
    end
    return false
end

# # Test Case

# array_a = [1 ,2 ,3 ,4, 10 ,20]

# # Exist 1
# result = sum_to_n(array_a, 30)
# puts result

# # Exist 2
# result = sum_to_n(array_a, 5)
# puts result

# # Not exist
# result = sum_to_n(array_a, 31)
# puts result

# # Array is null

# array_a = []
# result = sum_to_n(array_a, 1)
# puts result

# array_a = []
# result = sum_to_n(array_a, 0)
# puts result


###############################################################
# Part 2
###############################################################
def hello(name)
    "
    name: String
    Return a string whhich start with 'Hello, '+ name 
    "

    return "Hello, " + name
end

# Test Case

# result = hello('Jams')
# puts result

# result = hello('Bob')
# puts result

def starts_with_consonant?(s)
    "
    If s start with unexpect [AEIOU] then, return true
    
    "

    regex = /^[^aeiou]/i
    match_data = s.match(regex)
    if match_data
        return true
    else
        return false
    end
end

# Test case

# str_ = 'apple'
# result = starts_with_consonant?(str_)
# puts result

# str_ = 'You want to eat peech'
# result = starts_with_consonant?(str_)
# puts result

# str_ = '?GuKong'
# result = starts_with_consonant?(str_)
# puts result


def binary_multiple_of_4?(s)
    "
    Ok, Use regex to certain if s only containes '0' or '1'
    If it is, it's a based-2
    "

    # Judge s is a based-2 string
    regex = /[^01]/i
    result = s.match(regex)
    if result
        return false
    end

    # biniary-string to integer
    int_s = s.to_i(2)
    # %
    if int_s % 4 == 0
        return true
    end
    return false
end

# Test Case

# all is number but containe 3 4 9 others
# str_ = '1000989'
# result=binary_multiple_of_4?(str_)
# puts result

# all is based-2, which is 21
# str_ = '00010101'
# result=binary_multiple_of_4?(str_)
# puts result

# all is based-2 
# str_ = '01011100'
# result=binary_multiple_of_4?(str_)
# puts result

# Containe 'a'
# str_ = '0101010a'
# result=binary_multiple_of_4?(str_)
# puts result



###############################################################
# Part 3
###############################################################

class BookInStock

    attr_reader :isbn
   #  attr_accessor :isbn
    attr_accessor :price
    def initialize(isbn, price)
        if _param_check(isbn, price)
            @isbn = isbn
            @price = Float(price)
        else
            # Raise An Exception
            raise ArgumentError, "isbn must be not null and price msut gt than 0 "
        end
    end

    def _param_check(isbn, price)
        "
        Param checker
        isbn is a string must not be ''

        price is a int must be grate than 0

        if not , return flase
        "
        if isbn == ''
            return false
        end

        if price <= 0
            return false
        end

        return true
    end

    # def price= (new_price)
    #     if Float(new_price) <= 0
    #         @price = Float(new_price)
    #     else
    #         raise ArgumentError, "Price must gt 0"
    #     end
    # end

    # def isbh
    #     @isbh
    # end

    def isbn
        @isbn
    end

    def price= (new_price) 
        @price = new_price
    end

    def price_as_string()
        "
        Return the price of book like $20.00
        "
        return format("$%0.2f", @price)
    end
end

# Test case

# isbn = ''
# price = 1
# book = BookInStock.new(isbn, price)

# isbn = '333'
# price = 0
# book = BookInStock.new(isbn, price)

isbn = 'ddd'
price = 20.93333
book = BookInStock.new(isbn, price)

puts "ISBN: #{book.isbn}" #这是由attr_reader决定的
puts "PRICE: #{book.price}"
puts "PRICE: #{book.price_as_string}"

book.price = book.price * 0.752
puts "PRICE: #{book.price}"
puts "PRICE: #{book.price_as_string}"

# book.isbn = '222'
# puts "ISBN: #{book.isbn}"
