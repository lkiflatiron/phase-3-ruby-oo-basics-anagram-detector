# Your code goes here!
require 'pry'

class Anagram
  attr_reader :word
  def initialize(word)
    @word = word
  end

  def sort_chars word
    word.chars.sort{ |a, b| a.upcase <=> b.upcase }.join('')
  end

  def match(word_array)
    word_array.filter { | entry| sort_chars(@word) == sort_chars(entry)}
  end
end

# listen = Anagram.new("listen")
# p listen.match(%w[enlists google inlets banana])