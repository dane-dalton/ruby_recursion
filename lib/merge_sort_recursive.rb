def merge_sort_rec(arr)
  return arr[0] if arr.length < 2
  mid = arr.length / 2 - 1
  new_arr = []
  arr_a = []
  arr_b = []
  arr_a.push(merge_sort_rec(arr[0..mid]))
  arr_b.push(merge_sort_rec(arr[(mid + 1)..-1]))
  arr_a.flatten!
  arr_b.flatten!
  puts "arr_a = #{arr_a}"
  puts "arr_b = #{arr_b}"
  until arr_a.empty? || arr_b.empty?
    if arr_a[0] <= arr_b[0]
      new_arr.push(arr_a.shift())
      p "a is bigger"
    else
      new_arr.push(arr_b.shift())
      p "b is bigger"
    end
  end
  new_arr.push(arr_a) if arr_b.empty?
  new_arr.push(arr_b) if arr_a.empty?
  return new_arr
end

array = [2, 1, 8, 5, 7, 6, 3, 4]
p merge_sort_rec(array)