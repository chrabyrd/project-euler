# The sequence of triangle numbers is generated by adding the natural
# numbers. So the 7th triangle number would be
#   1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten terms would be:
#
# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
#
# Let us list the factors of the first seven triangle numbers:
#
#  1: 1
#  3: 1,3
#  6: 1,2,3,6
# 10: 1,2,5,10
# 15: 1,3,5,15
# 21: 1,3,7,21
# 28: 1,2,4,7,14,28
# We can see that 28 is the first triangle number to have over five
# divisors.
#
# What is the value of the first triangle number to have over five
# hundred divisors?

def triangle_number_value(num_of_divisors)
  return 1 if num_of_divisors == 1
  count = 1
  triangle_num = 0

  loop do
    divisors = 0
    triangle_num += count
    count += 1

    (1..Math.sqrt(triangle_num)).each do |num|
      if triangle_num % num == 0
        divisors += 2
      end
    end

    return triangle_num if divisors > num_of_divisors
  end
end

p triangle_number_value(500)
