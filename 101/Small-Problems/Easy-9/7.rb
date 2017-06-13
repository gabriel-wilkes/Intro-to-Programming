def swap_name(name)
  arr = name.split
  "#{arr[1]}, #{arr[0]}"
end

p swap_name('Joe Roberts') == 'Roberts, Joe'
