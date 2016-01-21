# Write a method smallest_integer which takes as its input an Array of integers and returns the smallest integer in theArray.

# Largest Integer

# I worked on this challenge by myself.

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def largest_integer(list_of_nums)
  if list_of_nums ==[]
    puts list_of_nums
  end
  if list_of_nums == [0]
    return 0
  else
    list_of_nums.max
  end
end
