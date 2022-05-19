# frozen_string_literal: true

def count_down_to_zero(number)
  if number.negative?
    puts "#{number} is negative, can on count down from postive numbers"
  else
    puts number
    count_down_to_zero(number - 1) unless number.zero?
  end
end

count_down_to_zero(10)
count_down_to_zero(-3)
