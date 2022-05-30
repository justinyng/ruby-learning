my_numbers = [5, 6, 7, 8]

# each vs reduce
sum = 0
my_numbers.each { |number| sum += number }
p sum

p my_numbers.reduce { |sum, number| sum + number }

# counting by reduce and tally
votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]

vote_counts = votes.reduce(Hash.new(0)) do |result, vote|
  result[vote] += 1
  result
end

p vote_counts

p votes.tally

# reduce with hashes, see https://stackoverflow.com/questions/13882956/reduce-hash-values
puts 'testing reduce with hashes:'
# just reducing the values
p({ first: 1, second: 2 }.values.reduce(0) { |result, (v)| result + v })
# or, if you need to inspect the key
p({ first: 1, second: 2 }.reduce(0) { |result, (_k, v)| result + v })
