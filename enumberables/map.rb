friends = %w[Sharon Leo Leila Brian Arun]
invited_friends = friends.map { |friend| friend.upcase }
p invited_friends
p friends

foods = { bacon: "protein", apple: "fruit" }
super_foods = foods.map{ |k, v| [k, "super #{v}"]}.to_h
p super_foods
