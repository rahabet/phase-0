
# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with:Kevin Serrano.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: an array of a number
# Output: the sum of each values
# Steps to solve the problem.
=begin
initialize a variable called 'sum' to 0
for each number in array
  add it to the variable sum
 output sum
=end
# 1. total initial solution
def total(array)
  sum = 0
  for x in array
    sum += x
  end
  return sum
end

# returns 15
puts total ([3,5,7])

# returns -5
puts total([-5,0,0])


# 3. total refactored solution

def total(array)
  array.reduce(:+)
end

# returns -5
puts total([-5,0,0])

# returns 15
puts total([3,5,7])

# make sure all pseudocode is commented out!
# Input: An array of strings
# Output: One string, the array concatenated
# Steps to solve the problem.
=begin

initialize a variable called 'sentence' to a blank string
for each string in array
  If it is the first string in the array, capitalize it.
  If it is the last string in the array, add a period.
  else concatenate it to the variable 'sentence' with a space at the end
output sentence

=end

# 5. sentence_maker initial solution

def sentence_maker(array)
  sentence = ''
  len = array.length
  for x in array
    x = x.to_s
    if len == array.length
      x.capitalize!
    end
    if len == 1
      sentence += x + '.'
    else
      sentence += x + ' '
    end
    len -= 1
  end
  return sentence
end

# Should output "I want to go to the movies."
puts sentence_maker(["i", "want", "to", "go", "to", "the", "movies"])


# 6. sentence_maker refactored solution

def sentence_maker(array)
  array[0] = array[0].to_s
  array[0].capitalize!
  sentence = array.join(" ")
  sentence += "."
end
