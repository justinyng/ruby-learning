def even_odd(number)
  return 'A number was not entered.' unless number.is_a? Numeric

  if number.even?
    'That is an even number.'
  else
    'That is an odd number.'
  end
end

puts even_odd(20)
puts even_odd('Ruby')
