def caesar_cipher(phrase,shift_factor)

  capital_arr = (65..90).to_a
  lowercase_arr = (97..122).to_a


  phrase_to_ordinal_arr = phrase.split("").map { |c| c.ord}

  shifted_arr = phrase_to_ordinal_arr.map do |element|
    if capital_arr.include?(element)
      capital_arr[(capital_arr.index(element) + shift_factor)%26]
    elsif lowercase_arr.include?(element)
      lowercase_arr[(lowercase_arr.index(element) + shift_factor)%26]
    else element
    end
  end
    return_map = shifted_arr.map { |c| c.chr}.join("")
end