def substrings(string, dictionary)
  string.downcase.split.each_with_object(Hash.new(0)) do |test_word, count_hash|
    dictionary.each { |keep_word| count_hash[keep_word] +=1 if test_word.include?(keep_word) }
  end
end