# frozen_string_literal: true

names = %w[Bob Joe Steve Janice Susan Helen]

# NOTE: rubyists (and rubocop!) prefer iterators over loops
# don't do use for loop for this, e.g.:
# for i in names do
#   puts i
# end

x = 1

names.each do |name|
  puts "#{x}. #{name}"
  x += 1
end
