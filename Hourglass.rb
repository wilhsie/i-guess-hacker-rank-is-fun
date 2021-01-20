class Hourglass
  # matrices, 2D arrays, for / (x..y).each do loops

  def hourglassSum(arr)
    hourglass_sum_arr = []
    (0..3).each do |x|
      (0..3).each do |y|
        hourglass_sum_arr.push(arr[x][y] + arr[x][y+1] + arr[x][y+2] +
                                 arr[x+1][y+1] +
                                 arr[x+2][y] + arr[x+2][y+1] + arr[x+2][y+2])
      end
    end

    hourglass_sum_arr.max
  end
end

run = Hourglass.new
puts run.hourglassSum([[-9, -9, -9, 1, 1, 1],
                  [0, -9 , 0 , 4, 3, 2],
                  [-9, -9, -9, 1, 2, 3],
                  [0, 0, 8, 6, 6, 0],
                  [0, 0, 0, -2, 0, 0],
                  [0, 0, 1, 2, 4, 0]])

puts run.hourglassSum([[1, 1, 1, 0, 0, 0],
                       [0, 1, 0, 0, 0, 0],
                       [1, 1, 1, 0, 0, 0],
                       [0, 0, 2, 4, 4, 0],
                       [0, 0, 0, 2, 0, 0],
                       [0, 0, 1, 2, 4, 0]])
