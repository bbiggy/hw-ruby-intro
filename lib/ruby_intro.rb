# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  arr.sum
end

def max_2_sum(arr)
  return 0 if arr.empty?
  return arr.first if arr.length == 1


  arr.sort.last(2).sum
end

def sum_to_n?(arr, n)

  complements = {}

  arr.each do |num|
    return true if complements[num] 
    complements[n - num] = true
  end

  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  return false if s.empty? || !s[0].match?(/[a-zA-Z]/)
  !s[0].match?(/[aeiouAEIOU]/)
end

def binary_multiple_of_4? s
  return false if s.empty?

  s.each_char do |char|
    return false unless char == '0' || char == '1'
  end

  s == '0' || s[-2..-1] == '00'
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError, 'ISBN cannot be empty' if isbn.empty?
    raise ArgumentError, 'Price must be greater than 0' if price <= 0

    @isbn = isbn
    @price = price
  end

  def price_as_string
    format('$%.2f', @price)
  end
end

