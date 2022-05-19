# countdown3.rb

puts 'Enter a number to start counting down to 0'
x = gets.chomp.to_i

for i in 1..x do
  puts x - i
end

puts 'Done!'
