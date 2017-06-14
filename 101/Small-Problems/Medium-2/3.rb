def letter_percentages(str)
  count = {}
  str_size = str.size.to_f
  count[:lowercase] = (str.delete("^a-z").size / str_size) * 100
  count[:uppercase] = (str.delete("^A-Z").size / str_size) * 100
  count[:neither] = (str.delete("a-zA-Z").size / str_size) * 100
  count[:lowercase]
  count
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
