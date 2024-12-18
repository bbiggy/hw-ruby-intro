# print "#{['banana', 'anana', 'naan'].map do |food|
#   food.reverse
#   end.select { |f| f.match /^a/ }}"

# def demonstrate_block(number)
#   yield(number)
#  end
#  puts demonstrate_block(2) { |number| number + 1 }

def calculate(a, b)
  yield(a, b)
end
puts calculate(2, 3) { |a, b| a + b }
puts calculate(2, 3) { |a, b| a - b }
puts calculate(2, 3) { |a, b| a * b }