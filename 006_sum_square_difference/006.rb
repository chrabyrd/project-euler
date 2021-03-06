# The sum of the squares of the first ten natural numbers is,
# 1**2 + 2**2 + ... + 10**2 = 385
#
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)2 = 55**2 = 3025
#
# Hence the difference between the sum of the squares of the first ten
# natural numbers and the square of the sum is 3025 − 385 = 2640.
#
# Find the difference between the sum of the squares of the first one
# hundred natural numbers and the square of the sum.

def sum_square_difference(ceiling)
  sum_of_squares = 0
  square_of_sums = 0

  (1..ceiling).each do |num|
    sum_of_squares += (num**2)
    square_of_sums += num
  end

  square_of_sums = (square_of_sums**2)

  square_of_sums - sum_of_squares
end

p sum_square_difference(100)
