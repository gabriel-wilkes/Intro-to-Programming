def swapcase(string)
  up = string.upcase
  down = string.downcase
  index = 0
  string.each_char do |c|
    if c == up[index]
      string[index] = down[index]
    elsif c == down[index]
      string[index] = up[index]
    end
    index += 1
  end
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'