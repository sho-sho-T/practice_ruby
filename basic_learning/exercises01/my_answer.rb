# 問題１: 配列内の最大値を見つける

numbers = [3, 7, 2, 8, 5, 1, 9, 4, 6]

def find_maximum(arr)
  maximum_num = 0

  arr.each do |num|
    maximum_num = num if num > maximum_num
  end

  maximum_num
end

puts find_maximum(numbers)

# 問題２：この find_maximum メソッドを使って、配列内の最小値を見つけるメソッド find_minimum を作成してみてください。
def find_minimum(arr)
  return if arr.empty?

  minimum_num = arr[0]

  arr.each do |num|
    minimum_num = num if num < minimum_num
  end

  minimum_num
end

puts find_minimum(numbers)

# 問題３：両方のメソッドを使って、配列内の最大値と最小値の差（範囲）を計算するメソッドを作成してみてください。

def get_range(arr)
  return if arr.empty?

  maximum_num = find_maximum(arr)
  minimum_num = find_minimum(arr)

  maximum_num - minimum_num
end

puts get_range(numbers)
