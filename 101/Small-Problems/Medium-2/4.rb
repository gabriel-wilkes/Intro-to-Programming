def balanced?(str)
  balance = 0
  str.chars.each do |char|
    if char == "("
      balance -= 1
    elsif char == ")"
      balance += 1
    end
    return false if balance > 0
  end
  return false if balance != 0
  true
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
