module PigLatinTranslator

  def translate(phrase)
    phrase.split(" ").inject([]) do |newphrase, word|
      newphrase << translate_word(word)
    end.join(" ")
  end
  
  def translate_word(word)
    return translate_for_initial_vowel(word) if %w{a e i o u}.include?(word[0,1])
    return translate_for_initial_consonent(word)
  end

  def translate_for_initial_vowel(word)
    word + "ay"
  end
  
  def translate_for_initial_consonent(word)
    # look for any consonent sequence followed by vowel
    parts = word.match(/([^aeiou]+)([aeiou]?)(\w*)/).captures
    # decide if the initial parts are the special case "qu<vowel>"
    if (parts[0] == "q" and parts[1] == "u")
      parts[2] + "quay"
    else
      parts[1] + parts[2] + parts[0] + "ay"
    end
  end

end
