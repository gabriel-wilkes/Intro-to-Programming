require "pry"
def egyptian(num)
  arr = []
  while num > 0
    if num == 1
      arr << 2
      arr << 3
      arr << 6
      num -= 1
    else
      if num.numerator == 1
        arr << num.denominator
        break
      else
        next_num = (num.denominator / num.numerator).to_i + 1
        while arr.include?(next_num)
          next_num += 1
        end
        arr << next_num
        num -= Rational(1, next_num)
      end
    end
  end
  arr
end

def unegyptian(arr)
  sum = 0
  arr.each do |element|
    sum += Rational(1, element)
  end
  sum
end

p egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)