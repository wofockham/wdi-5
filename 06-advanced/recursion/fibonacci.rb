# Iterative version
def fibonacci(n)
  a = 0
  b = 1

  while (n > 0)
    b, a = a + b, b # Parallel assignment.
    n = n - 1
  end

  a
end

p fibonacci(27)


def fibonacci_recursive(n)
  if n < 2
    1
  else
    fibonacci_recursive(n - 1) + fibonacci(n - 2)
  end
end

(1..10).each do |i|
  p fibonacci_recursive i
end