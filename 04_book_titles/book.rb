class String
  def capitalize_unless_small
    (self.size > 3) ? self.capitalize : self
  end
end

class Book

  attr_accessor :title
  
  def title=(phrase)
    @title = capitalize(phrase)
  end

  def capitalize(phrase)
    phrase.split(" ").inject([]) do |titlized_phrase, word|
      if (titlized_phrase.empty? || word == "i")
        titlized_phrase << word.capitalize
      else
        titlized_phrase << word.capitalize_unless_small
      end
    end.join(" ")
  end

end
