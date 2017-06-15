def transpose(mtx)
  new_mtx = [[],[],[]]
  mtx.size.times do |x|
    mtx.size.times do |y|
      new_mtx[x][y] = mtx[x][y]
    end
  end

  new_mtx[1][0], new_mtx[0][1] = new_mtx[0][1], new_mtx[1][0]
  new_mtx[2][0], new_mtx[0][2] = new_mtx[0][2], new_mtx[2][0]
  new_mtx[2][1], new_mtx[1][2] = new_mtx[1][2], new_mtx[2][1]
  new_mtx
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
