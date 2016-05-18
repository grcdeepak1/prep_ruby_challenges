include Math
def is_prime?(num)
  # A number is not prime if it has factors
  # between 2 and sqrt of the number
  !(2..sqrt(num)).detect { |i| num % i == 0 }
end
