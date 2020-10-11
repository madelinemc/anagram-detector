require'pry'
class Anagram

    def initialize(word="")
        @word = word
    end

    attr_accessor :word

    def match(array_of_possible_anagrams)
        array_of_anagrams = []
        array_of_letters_in_word = word.split("")
        array_of_possible_anagrams.each do |each_possible_anagram| 
            anagram_split_by_letter = each_possible_anagram.split("")
            if anagram_split_by_letter.sort == array_of_letters_in_word.sort
                array_of_anagrams << anagram_split_by_letter.join
            end
        end
        array_of_anagrams
    end
end