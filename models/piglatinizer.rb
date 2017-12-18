class PigLatinizer
  attr_reader :phrase

  def initialize(text_from_user)
    @phrase=text_from_user
  end

  def piglatinize(word)
   if "bcdfghjklmnpqrstvwxyz".include?(word[0])
    arr=word.split(/[aeoui]/)
    cons=arr.shift
    new_word=word[cons.length..word.length-1]+cons+"ay"
   else
     new_word=word+"way"
   end
   new_word
 end

   def to_pig_latin(phrase)
     arr=phrase.split(" ")
     new_phrase=arr.map {|word| piglatinize(word)}.join(" ")
   end
end
