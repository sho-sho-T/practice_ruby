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

# --------- claude採点 ------------------------
# 問題１
# 90点
#
# 正しい点:

# find_maximum メソッドを正しく定義しています。
# 配列をループで処理するために each メソッドを使用しています。
# 条件分岐を使って最大値を更新しています。
# 最終的に最大値を返しています。

# 改善できる点:

# 初期値の設定: maximum_num = 0 としていますが、配列に負の数が含まれる場合に正しく動作しません。
# ------------------------------------------------

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
