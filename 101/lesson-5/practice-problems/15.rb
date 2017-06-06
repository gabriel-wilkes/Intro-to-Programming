arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

new_array = arr.select do |hsh|
  hsh.values.all? do |subarr|
    subarr.all? do |int|
      int.even?
    end
  end
end

p new_array