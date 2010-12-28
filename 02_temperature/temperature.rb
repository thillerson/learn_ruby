class Temperature
  FIVE_OVER_NINE = 5.0/9.0
  NINE_OVER_FIVE = 9.0/5.0

  def ftoc(f)
    FIVE_OVER_NINE * (f - 32.0)
  end

  def ctof(c)
    NINE_OVER_FIVE * c + 32
  end
  
end
