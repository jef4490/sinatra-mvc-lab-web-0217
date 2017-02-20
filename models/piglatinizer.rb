class PigLatinizer
  VOWELS = ["a", "e", "i", "o", "u"]
  NON_PIG_LATIN_WORDS = ["i", "me", "to", "too", "a", "an", "in", "and", "on", "until"]
  def piglatinize(word)
    array = word.split("")
    # binding.pry
    if NON_PIG_LATIN_WORDS.include?(word.downcase)
      return word << "way"
    elsif VOWELS.include?(array[0].downcase)
      array.push("w", "a", "y")
      return array.join
    else
      until VOWELS.include?(array[0])
        # binding.pry
        array.push(array.shift)
      end
      # binding.pry
      array.push("a", "y")
      # binding.pry
      return array.join
    end
    array
  end

  def to_pig_latin(string)
    string_array = string.split.map do |word|
      self.piglatinize(word)
    end
    string_array.join(" ")
  end
end
