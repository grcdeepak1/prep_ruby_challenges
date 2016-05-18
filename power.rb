def power(base, exp)
  op = 1
  # Multiply base with itself exp times
  exp.times { op *= base }
  op
end
