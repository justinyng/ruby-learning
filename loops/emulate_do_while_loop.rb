# frozen_string_literal: true

message = :'Do you want to do that again?'

loop do
  puts message
  answer = gets.chomp
  break unless answer == 'Y'
end
