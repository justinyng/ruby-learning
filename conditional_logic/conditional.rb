# frozen_string_literal: true

def convert_to_caps(string)
  string.length > 10 ? string.upcase : string
end

puts convert_to_caps('today')
