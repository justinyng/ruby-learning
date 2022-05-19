# frozen_string_literal: true

# NOTE: from stackoverflow post: https://stackoverflow.com/questions/62625180/does-upcase-not-mutate-a-variable-in-ruby

def change_me_by_value(str)
  str += '?'
  str.upcase
end

def change_me_by_reference(str)
  str << '?'
  str.upcase!
end

question = 'whats your name'
change_me_by_value(question)
puts question << ' <---- this is should not be modified'

question = 'whats your name'
change_me_by_reference(question)
puts question << ' <----- this should be in CAPS and end with?'
