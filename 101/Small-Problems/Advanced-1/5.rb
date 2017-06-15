def rotate90(mtx)
  new_mtx = []
  (0...mtx[0].size).each do |row_index|
    new_mtx[row_index] = (0...mtx.size).map do |column_index|
      mtx[column_index][row_index]
    end
    new_mtx[row_index].reverse!
  end
  new_mtx
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2