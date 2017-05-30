def staggered_case(string)
  up = true
  index = 0
  string.each_char do |c|
    if c.delete("^A-Z^a-z").size == 0
      string[index] = c 
    elsif up
      string[index] = c.upcase
      up = false
    else 
      string[index] = c.downcase
      up = true
    end
    index += 1
  end
  string
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'