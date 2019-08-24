#!/usr/local/bin/ruby -w
# -*- coding : utf-8 -*-



# Class Vehicle
# {
#    Number no_of_wheels
#    Number horsepower
#    Characters type_of_tank
#    Number Capacity
#    Function speeding
#    {
#    }
#    Function driving
#    {
#    }
#    Function halting
#    {
#    }
# }


# class MyFistClass
#     Number a
# end

=begin
Ruby 类中的变量
Ruby 提供了四种类型的变量：

局部变量：局部变量是在方法中定义的变量。局部变量在方法外是不可用的。在后续的章节中，您将看到有关方法的更多细节。局部变量以小写字母或 _ 开始。
实例变量：实例变量可以跨任何特定的实例或对象中的方法使用。这意味着，实例变量可以从对象到对象的改变。实例变量在变量名之前放置符号（@）。
类变量：类变量可以跨不同的对象使用。类变量属于类，且是类的一个属性。类变量在变量名之前放置符号（@@）。
全局变量：类变量不能跨类使用。如果您想要有一个可以跨类使用的变量，您需要定义全局变量。全局变量总是以美元符号（$）开始。
=end

# class Customer
#     @@no_of_customers=0
# end
# cust1 = Customer. new
# cust2 = Customer.new

# puts cust1
# puts cust2


class Customer
    @@no_of_customers=0
    def initialize(id, name, addr)
        @cust_id=id
        @cust_name=name
        @cust_addr=addr
    end

    def method_1()
        puts 'hello method 1'
    end

end

cust1=Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2=Customer.new("2", "Poul", "New Empire road, Khandala")
# puts cust1.id
# puts cust2.name

puts cust1
puts cust2

puts cust1.method_1