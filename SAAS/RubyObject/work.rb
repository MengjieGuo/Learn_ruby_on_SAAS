#!/usr/local/bin/ruby -w
# -*- coding : utf-8 -*-
class String
    def curvy?
        !("AEFHIKLMNTVWXYZ".include?(self.upcase))
    end
end

# work.rb:9:in `<main>': undefined method `curvy?' for String:Class (NoMethodError)
# String.curvy?('foo')

# 'foo'.curvy?

# work.rb:11:in `<main>': undefined method `curvy?' for main:Object (NoMethodError)
# self.curvy?('foo')

# work.rb:13:in `<main>': undefined method `curvy?' for main:Object (NoMethodError)
# curvy?('foo')


