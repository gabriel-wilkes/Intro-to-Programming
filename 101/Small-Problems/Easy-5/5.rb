def cleanup(string)
  string.gsub!(/[^a-zA-Z0-9]/, " ")

  leading = false
  trailing = false
  if string[0] == " "
    leading = true
  end
  if string[-1] == " "
    trailing = true
  end

  string = string.split.join(" ")

  if leading
    string = " " + string
  end
  if trailing
    string = string + " "
  end
  string
end

p cleanup("---what's my +*& line?") == ' what s my line '