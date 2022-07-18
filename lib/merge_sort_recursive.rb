def merge_sort_rec(arr)
  if arr.length < 2
    return arr
  else
    mid = arr.length / 2 - 1
    arr_left = merge_sort_rec(arr[0..mid])
    arr_right = merge_sort_rec(arr[(mid + 1)..-1])
    merge(arr_left, arr_right)
  end
end

def merge(left, right, temp_arr = [])
  until left.empty? || right.empty?
    if left[0] <= right[0]
      temp_arr << left.shift()
    else
      temp_arr << right.shift()
    end
  end
  temp_arr << right if left.empty?
  temp_arr << left if right.empty?
  temp_arr.flatten!
end

array = []
rand(100).times do
  array << rand(100)
end

p merge_sort_rec(array)