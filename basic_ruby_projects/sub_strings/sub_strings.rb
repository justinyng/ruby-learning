def substrings(text, dictionary)
  substrings_array = []
  lowercase_separated_test_strings = text.downcase.split(/[,\s]+/)
  lowercase_separated_test_strings.each do |test_string|
    dictionary.each { |word| substrings_array << word if test_string[word] }
  end
  substrings_array.tally
end
