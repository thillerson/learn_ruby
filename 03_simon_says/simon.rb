module Simon

  def echo(str)
    str
  end

  def shout(str)
    str.upcase
  end

  def repeat(str, count=2)
    Array.new.tap do |array|
      1.upto(count){|num| array << str}
    end.join(" ")
  end

  def start_of_word(word, len)
    word[0,len]
  end

  def first_word(phrase)
    phrase.split(" ").first
  end

end
