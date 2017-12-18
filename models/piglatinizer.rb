class PigLatinizer

  def initialize
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

   def starts_with_consonant?(word)
     if "bcdfghjklmnpqrstvwxyz".include?(word[0])
       return true
     else
       return false
     end
   end



end
