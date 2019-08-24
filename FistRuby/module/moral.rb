# 定义在 moral.rb 文件中的模块

module Moral
    VERY_BAD = 0
    BAD = 1
    def Moral.sin(badness)
    # ...
    end
 end


 module Week
    FIRST_DAY = "Sunday"
    def Week.weeks_in_month
       puts "You have four weeks in a month"
    end
    def Week.weeks_in_year
       puts "You have 52 weeks in a year"
    end
 end