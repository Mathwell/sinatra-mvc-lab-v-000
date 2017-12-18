class PigLatinizer

  def initialize
  end

  def piglatinize(word)
   if starts_with_consonant?(word)
    arr=word.split(/[aeoui]/)
    cons=arr.shift
    new_word=arr.to_s+cons+"ay"
   else
     new_word=word+"way"
   end

   def starts_with_consonant?(word)
     if "bcdfghjklmnpqrstvwxyz".include?(word[0])
       return true
     else
       return false
     end
   end

  end

end
