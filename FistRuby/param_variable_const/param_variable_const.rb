#!/usr/local/bin/ruby -w
# -*- coding : utf-8 -*-


=begin
Ruby 支持五种类型的变量。

一般小写字母、下划线开头：变量（Variable）。
$开头：全局变量（Global variable）。
@开头：实例变量（Instance variable）。
@@开头：类变量（Class variable）类变量被共享在整个继承链中
大写字母开头：常数（Constant）。


Ruby 局部变量
局部变量以小写字母或下划线 _ 开头。局部变量的作用域从 class、module、def 或 do 到相对应的结尾或者从左大括号到右大括号 {}。

当调用一个未初始化的局部变量时，它被解释为调用一个不带参数的方法。

对未初始化的局部变量赋值也可以当作是变量声明。变量会一直存在，直到当前域结束为止。局部变量的生命周期在 Ruby 解析程序时确定。

在上面的实例中，局部变量是 id、name 和 addr。


Ruby 伪变量
它们是特殊的变量，有着局部变量的外观，但行为却像常量。您不能给这些变量赋任何值。

self: 当前方法的接收器对象。
true: 代表 true 的值。
false: 代表 false 的值。
nil: 代表 undefined 的值。
__FILE__: 当前源文件的名称。
__LINE__: 当前行在源文件中的编号。

=end

$global_variable = 10
class Class1
  def print_global
     puts "Global variable in Class1 is #$global_variable"
  end
end
class Class2
  def print_global
     puts "Global variable in Class2 is #$global_variable"
  end
end

class1obj = Class1.new
class1obj.print_global
class2obj = Class2.new
class2obj.print_global


# Instance variable

class Customer
    def initialize(id, name, addr)
       @cust_id=id
       @cust_name=name
       @cust_addr=addr
    end
    def display_details()
       puts "Customer id #@cust_id"
       puts "Customer name #@cust_name"
       puts "Customer address #@cust_addr"
     end
 end
 
 # 创建对象
 cust1=Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
 cust2=Customer.new("2", "Poul", "New Empire road, Khandala")
 
 # 调用方法
 cust1.display_details()
 cust2.display_details()
