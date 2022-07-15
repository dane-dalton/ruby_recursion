def fib_recursive(n, arr = [])
  return 0 if n == 1
  return 1 if n == 2
  fib_recursive(n - 1) + fib_recursive(n - 2)
end

p fib_recursive(8)