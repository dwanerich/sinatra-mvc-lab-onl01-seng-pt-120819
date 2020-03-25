class PigLatinizer
  
  attr_accessor :piglatinized_phrase

def piglatinize(phrase)
  word_array = phrase.split(" ")
  @piglatinized_phrase = word_array.collect {|word| to_pig_latin(word)}.join(" ")
end

def to_pig_latin(word)
  if word.downcase.index(/[aeiou]/) == 0
    word + "way"
  else
    vowel_index = word.index(/[aeiou]/)
    front_end = word.slice!(0..vowel_index-1)
    word + front_end +"ay"
  end
end
end

