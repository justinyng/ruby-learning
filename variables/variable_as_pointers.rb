# frozen_string_literal: true

def test(my_array)
  # NOTE: some operations like map! will mutate, others like map will not
  my_array.map { |letter| "I like the letter: #{letter}" }
end

a = %w[a b c] # equivalend to --> a = ['a', 'b', 'c']
puts test(a)
puts a
