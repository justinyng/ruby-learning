#Below we have given you an array and a number. Write a program that checks to see if the number appears in the array.
arr = [1, 3, 4, 7, 9, 11]

# puts "Enter in number to see if in master array:"
# number = gets.chomp.to_i
# if arr.include?(number)
#   puts "#{number} is in array!"
# else
#   puts "#{number} is not in array."
# end

puts "Enter in number to see if in master array:"
number = gets.chomp.to_i
until arr.include?(number)
  puts "#{number} not in master array, try again"
  number = gets.chomp.to_i
end
puts "#{number} is in array!!"

# arr = [1, 2, 3, 4, 5]

# new_arr = arr.map do |n|
#   n + 2
# end

# p arr
# p new_arr