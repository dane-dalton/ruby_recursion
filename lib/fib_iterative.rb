def fib_iterative(n)
  sum_1 = 0
  sum_2 = 1
  arr = [sum_1, sum_2]
  arr = [sum_1] if n == 1
  while arr.length < n
    temp = sum_2
    sum_2 = sum_1 + sum_2
    sum_1 = temp
    arr << sum_2
  end
  arr
end

p fib_iterative(40)