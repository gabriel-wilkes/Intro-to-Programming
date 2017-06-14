def block_word?(word)
  blocks = [ "BO", "XK", "DQ", "CP", "NA", "GT", "RE",
             "FS", "JW", "HU", "VI", "LY", "ZM" ]
  upcase_word = word.upcase
  letters = upcase_word.chars
  letters.each do |letter|
    contained = false
    blocks.each do |block|
      if letter == (block[0]) || letter == (block[1])
        contained = true
        blocks.delete(block)
      end
    end
    return false unless contained
  end
  return true
end


p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
