friends = %w[Sharon Leo Leila Brian Arun]
invited_list = []

# friends.each do |friend|
#   invited_list.push(friend) unless friend == 'Brian'
# end

invited_list = friends.reject { |friend| friend == 'Brian' }

p invited_list
