def factorial(num)
  # Base case
  if num == 1
    return num
  end
  # Recursive case
  num * factorial(num - 1)
end
