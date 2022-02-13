# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0, :+)
end

def max_2_sum arr
  arr.max(2).reduce(0, :+)
end

def sum_to_n? arr, n
  !!arr.uniq.combination(2).detect { |a, b| a + b == n }
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  s =~ /\A(?=[^aeiou])(?=[a-z])/i
end

def binary_multiple_of_4? s
  ((s !~ /[^01]/) and (s[-2..-1] == "00")) or ((s.length == 1) and (s[-1..] == "0"))
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if isbn == "" or price <= 0
      raise ArgumentError
    else
      @isbn = isbn
      @price = price
    end
  end
  
  attr_accessor :isbn
  attr_accessor :price
  
  def price_as_string()
    sprintf('$%.2f', @price)
  end
end
