class Array

  def my_uniq
    arr = []
    self.each { |el| arr << el unless arr.include?(el) }
    arr
  end

  def two_sum
    pairs = []
    (0...(length - 1)).each do |idx1|
      ((idx1 + 1)..(length - 1)).each do |idx2|
        sum = self[idx1] + self[idx2]
        pairs << [idx1, idx2] if sum == 0
      end
    end
    return nil if pairs.empty?
    pairs
  end

end

def my_transpose(arr)
  transposed = arr
  (0...arr.length).each do |i|
    (0...arr[0].length).each do |j|
      transposed[i][j] = transposed[j][i]
    end
  end
  transposed
end

def stock_picker(arr)

  biggest_profit = 0
  best_days = nil
  (0...(arr.length - 1)).each do |idx1|
    ((idx1 + 1)..(arr.length - 1)).each do |idx2|
      profit = arr[idx2] - arr[idx1]
      if profit > biggest_profit
        biggest_profit = profit
        best_days = [idx1, idx2]
      end
    end
  end
  best_days
end
