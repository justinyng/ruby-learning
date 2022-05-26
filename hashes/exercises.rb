drink_prices = { coffee: 2.99, tea: 1.99 }

puts drink_prices.keys
puts drink_prices.values
drink_prices.each {|k, v| puts "#{k} #{v}"}

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
puts person[:name]

puts person.value?('painting')
