def staggered_case(string)
  index = 0
  string.each_char do |c|
    if index.even?
      string[index] = c.upcase
    else 
      string[index] = c.downcase
    end
    index += 1
  end
  string
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'