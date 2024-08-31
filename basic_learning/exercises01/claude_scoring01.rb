# 配列操作のメソッド集

# 配列内の最大値を見つけるメソッド
def find_maximum(arr)
  return nil if arr.empty?

  maximum_num = arr[0]

  arr.each do |num|
    maximum_num = num if num > maximum_num
  end

  maximum_num
end

# 配列内の最小値を見つけるメソッド
def find_minimum(arr)
  return nil if arr.empty?

  minimum_num = arr[0]

  arr.each do |num|
    minimum_num = num if num < minimum_num
  end

  minimum_num
end

# 配列内の最大値と最小値の差（範囲）を計算するメソッド
def get_range(arr)
  return nil if arr.empty?

  maximum_num = find_maximum(arr)
  minimum_num = find_minimum(arr)
  maximum_num - minimum_num
end

# テスト用のサンプルデータ
numbers = [3, 7, 2, 8, 5, 1, 9, 4, 6]

# メソッドのテストと結果の出力
puts "最大値: #{find_maximum(numbers)}"
puts "最小値: #{find_minimum(numbers)}"
puts "範囲: #{get_range(numbers)}"

# エッジケースのテスト
empty_array = []
puts "\n空の配列のテスト:"
puts "最大値: #{find_maximum(empty_array)}"
puts "最小値: #{find_minimum(empty_array)}"
puts "範囲: #{get_range(empty_array)}"

same_value_array = [5, 5, 5, 5, 5]
puts "\n同じ値の配列のテスト:"
puts "最大値: #{find_maximum(same_value_array)}"
puts "最小値: #{find_minimum(same_value_array)}"
puts "範囲: #{get_range(same_value_array)}"
