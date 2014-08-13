# 6! = 6 * 5 * 4 * 3 * 2 * 1 == 720

# Iterative version.
def factorial(n)
  product = 1
  while (n > 1)
    product = product * n
    n = n - 1
  end
  product
end

# p factorial(18)

# Recursive version.
def factorial_recursive(n)
  if n == 1
    1                              # Base case.
  else
    n * factorial_recursive(n - 1) # Move closer to the base case.
  end
end

def factorial_elegant_recursive(n)
  n == 1 ? 1 : n * factorial_elegant_recursive(n - 1)
end

p factorial_elegant_recursive(18)
