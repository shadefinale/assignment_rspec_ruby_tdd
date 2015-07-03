# We'll globally define a list of words, here using enable.txt
class Anagrams

  def initialize
    @words = []
  end

  def generate_words
    words = []

    File.readlines('enable.txt').each do |line|
      new_line = line
      # We don't care for the new line character, it will only trip us up.
      new_line = new_line.delete("\n")
      words << new_line
    end
    @words = words
  end

  def anagrams(string)
    @words.select {|word| word.upcase.chars.sort ==
    string.upcase.chars.sort && (word != string)}
  end
end