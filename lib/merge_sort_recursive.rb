def merge_sort_rec(arr)
  return if arr.length < 2
  mid = arr.length / 2 - 1
  arr_a = []
  arr_b = []
  for i in (0..arr.length - 1)
    arr_a.push(arr[i]) if i <= mid
    arr_b.push(arr[i]) if i > mid
  end
  merge_sort_rec(arr_a)
  merge_sort_rec(arr_b)
end