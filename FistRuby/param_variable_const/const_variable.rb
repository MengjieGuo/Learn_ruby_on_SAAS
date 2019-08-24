#!/usr/local/bin/ruby -w
# -*- coding : utf-8 -*-

#!/usr/bin/ruby


class Example
    VAR1 = 100
    VAR2 = 200
    def show
        puts "Value of first Constant is #{VAR1}"
        puts "Value of second Constant is #{VAR2}"
    end
 end
 
 # 创建对象
 object=Example.new()
 object.show