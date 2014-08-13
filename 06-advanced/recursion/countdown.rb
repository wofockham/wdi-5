# Iterative version.
def countdown(count)
  while count > 0
    puts count
    count -= 1
  end
  puts "Blastoff"
end

# countdown(5)

# Recursive version.
def countdown_recursive(count)
  if count == 0
    puts "Blastoff"                # Base case.
  else
    puts count
    countdown_recursive(count - 1) # Move toward the base case.
  end
end

countdown_recursive(5)
