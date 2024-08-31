# クイックソートアルゴリズムの実装

# クイックソートのメインメソッド
def quicksort(arr)
  return arr if arr.length <= 1

  # ピボットを選択（ここでは配列の最後の要素を使用）
  pivot = arr.pop

  # ピボットより小さい要素と大きい要素に分割
  left = arr.select { |x| x < pivot }
  right = arr.select { |x| x >= pivot }

  # 再帰的に左右の部分配列をソートし、結果を結合
  quicksort(left) + [pivot] + quicksort(right)
end

# クイックソートの別の実装（In-place）
def quicksort!(arr, low = 0, high = arr.length - 1)
  if low < high
    # パーティションを行い、ピボットのインデックスを取得
    pi = partition(arr, low, high)

    # ピボットの左右の部分配列を再帰的にソート
    quicksort!(arr, low, pi - 1)
    quicksort!(arr, pi + 1, high)
  end

  arr
end

# パーティション処理
def partition(arr, low, high)
  # ピボットとして最後の要素を選択
  pivot = arr[high]
  i = low - 1

  # ピボットより小さい要素を左側に移動
  (low...high).each do |j|
    if arr[j] <= pivot
      i += 1
      arr[i], arr[j] = arr[j], arr[i]
    end
  end

  # ピボットを正しい位置に配置
  arr[i + 1], arr[high] = arr[high], arr[i + 1]
  i + 1
end

# テスト用のサンプルデータ
numbers = [3, 7, 2, 8, 5, 1, 9, 4, 6]

# クイックソートのテストと結果の出力
puts "元の配列: #{numbers}"
puts "ソート後 (非破壊的): #{quicksort(numbers)}"
puts "元の配列 (変更されていないことを確認): #{numbers}"

# In-placeクイックソートのテスト
numbers_copy = numbers.dup
puts "In-placeソート後: #{quicksort!(numbers_copy)}"

# エッジケースのテスト
empty_array = []
puts "\n空の配列のテスト:"
puts "ソート後: #{quicksort(empty_array)}"

single_element_array = [5]
puts "\n要素が1つの配列のテスト:"
puts "ソート後: #{quicksort(single_element_array)}"

# 大きな配列でのパフォーマンステスト
large_array = Array.new(10_000) { rand(10_000) }
puts "\n大きな配列（10000要素）のソート時間:"
time = Time.now
quicksort(large_array)
puts "経過時間: #{Time.now - time} 秒"
