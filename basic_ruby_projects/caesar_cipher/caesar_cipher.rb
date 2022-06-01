def caesar_cipher(string, number_to_shift)
  encrypted_string_array = []
  string.chars.each do |char|
    shifted_char = char.match(/\w/) ? get_shifted_char_when_alphanumeric(char, number_to_shift) : char
    encrypted_string_array << shifted_char
  end
  encrypted_string_array.join
end

def get_shifted_char_when_alphanumeric(char, number_to_shift)
  original_char_ord = char.ord
  upper_case_ord_limit = 90 - number_to_shift
  lower_case_ord_limit = 122 - number_to_shift
  new_ord = 0

  case original_char_ord
  when 65..upper_case_ord_limit
    new_ord = original_char_ord + number_to_shift
  when upper_case_ord_limit..90
    new_ord = 65 + (original_char_ord + number_to_shift - 90 - 1)
  when 97..lower_case_ord_limit
    new_ord = original_char_ord + number_to_shift
  when lower_case_ord_limit..122
    new_ord = 97 + (original_char_ord + number_to_shift - 122 - 1)
  end
  new_ord.chr
end
