class Calculator

  def add(num1, num2)
    sum([num1,num2])
  end

  def subtract(num1, num2)
    num1 - num2
  end

  def sum(nums)
    nums.inject(0) do |acc, num|
      acc + num
    end
  end

  def multiply(num1, num2)
    product([num1, num2])
  end

  def product(nums)
    nums.inject(1) do |acc, num|
      acc * num
    end
  end

  def pow(num1, num2)
    num1 ** num2
  end

  def factorial(num)
    case num
    when 0 then 1
    else num * factorial(num-1)
    end
  end
end
