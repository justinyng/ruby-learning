responses = { Sharon: 'yes', Leo: 'no', Leila: 'no', Arun: 'yes' }
going_to_party = responses.select { |_person, response| response == 'yes' }
p going_to_party
