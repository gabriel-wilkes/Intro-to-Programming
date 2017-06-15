def transpose(mtx)
  new_mtx = []
  (0...mtx[0].size).each do |row_index|
    new_mtx[row_index] = (0...mtx.size).map do |column_index|
      mtx[column_index][row_index]
    end
  end
  new_mtx
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]