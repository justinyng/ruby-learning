# frozen_string_literal: true

puts 'Enter a number to start counting down to 0'
x = gets.chomp.to_i

while x >= 0
  puts x
  x -= 1
end

puts 'Done!!'
