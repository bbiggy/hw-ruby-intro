# Part 1

# Method to return the sum of all elements in the array
def sum(arr)
  arr.sum
end

# Method to return the sum of the two largest elements in the array
def max_2_sum(arr)
  # Return 0 if the array is empty
  return 0 if arr.empty?
  
  # If the array has only one element, return that element
  return arr[0] if arr.length == 1

  # Sort the array and take the last two elements (the largest ones), then return their sum
  arr.sort.last(2).sum
end

# Method to check if there are two distinct elements in the array that sum up to 'n'
def sum_to_n?(arr, n)
  # Initialize an empty hash to store the complements of the numbers
  complements = {}

  # Loop through each element in the array
  arr.each do |num|
    # If the complement of the current number is already in the hash, return true
    return true if complements[num] 
    
    # Otherwise, store the complement (n - num) as a key in the hash
    complements[n - num] = true
  end

  # Return false if no two numbers sum up to 'n'
  false
end

# Part 2

# Method to return a greeting message including the provided name
def hello(name)
  "Hello, #{name}"
end

# Method to check if a string starts with a consonant letter
def starts_with_consonant? s
  # Return false if the string is empty or if the first character is not a letter
  return false if s.empty? || !s[0].match?(/[a-zA-Z]/)
  
  # Return true if the first character is not a vowel (i.e., a consonant)
  !s[0].match?(/[aeiouAEIOU]/)
end

# Method to check if a binary string represents a number that is a multiple of 4
def binary_multiple_of_4? s
  # Return false if the string is empty
  return false if s.empty?

  # Loop through each character in the string
  s.each_char do |char|
    # Return false if the character is not '0' or '1' (invalid binary number)
    return false unless char == '0' || char == '1'
  end

  # Return true if the binary number is '0' or its last two digits are '00' (i.e., divisible by 4)
  s == '0' || s[-2..-1] == '00'
end

# Part 3

# Define a class to represent a book in stock, with an ISBN and price
class BookInStock
  # Create getter and setter methods for isbn and price
  attr_accessor :isbn, :price

  # Constructor to initialize the book's ISBN and price
  def initialize(isbn, price)
    # Raise an error if the ISBN is empty
    raise ArgumentError, 'ISBN cannot be empty' if isbn.empty?
    
    # Raise an error if the price is less than or equal to 0
    raise ArgumentError, 'Price must be greater than 0' if price <= 0

    # Set the ISBN and price attributes
    @isbn = isbn
    @price = price
  end

  # Method to return the price formatted as a string with a dollar sign and two decimal places
  def price_as_string
    format('$%.2f', @price)
  end
end
