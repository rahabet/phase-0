# Numbers to Commas Solo Challenge

# I spent [4 hrs] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? Positive integer
# What is the output? (i.e. What should the code return?) comma separated integer
# What are the steps needed to solve the problem?
     #  split each number and put it in a container
     #  divide the length of the number for 3 and put it in another holder
     #   called number2
     # check IF the length of the number given is less than 4,it it is,
     #         then print number
     # ELSE IF  the remainder of  the length of the number when it is divisible
     #          by 3 is zero
     #          do start counting the length of the number from the right until
     #          it is -4 and add comma
     #          repeat this process for number2 times
     #  END IF

# 1. Initial Solution

def separate_comma(number)
  num_array = number.to_s.split('')
  new_num = num_array.length / 3
  if num_array.length < 4
    p number.to_s
  elsif num_array.length % 3 == 0
    n = -4
    (new_num-1).times do |i|
      num_array.insert(n, ',')
      n -= 4
    end
    p num_array.join("")
  else
      n = -4
    new_num.times do |i|
      num_array.insert(n, ',')
      n -= 4
    end
  p num_array.join("")
  end
end

separate_comma(1000000)    # => "1,000,000"
separate_comma(895526000) # => "895,526,000"
separate_comma(0)       # => "0"
separate_comma(100)     # => "100"
separate_comma (10000)   # => "10,000"


# 2. Refactored Solution

def separate_comma(number)
  first_num = number.to_s.chars.reverse
  final_num = first_num.each_slice(3).map {|n| n.join}
  final_num.join(",").reverse
end

p separate_comma(1000000)    # => "1,000,000"
p separate_comma(0)       # => "0"
p separate_comma(100)     # => "100"
p separate_comma (1000)   # => "1,000"

# 3. Reflection

# • What was your process for breaking the problem down? What different approaches did you consider?

#    It was challenging to put my thoughts into words or I wasn’t sure how I wanted to do it and it took me a while to figure out to come up with a small steps.
# • Was your pseudocode effective in helping you build a successful initial solution?

#     no it was not effective. I wrote the pseudocode but it wasn’t helpful when i translate it to the code. I got stacked many times and I went on to seek help but once i got a clear picture it was smooth afterwards.

# • What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

#     the. slice method was mentioned by a friend of mine while i was discussing my initial solution. so after completing the initial solution, I went on to search how it works and it really seem easy to use and my code become more readable once i apply it along with other methods (.reverse, map). and using this method actually changed the process of how my code works from my initial solution which is amazing and nice.

# • How did you initially iterate through the data structure?

#     I first did split the numbers and changed them to string. then I divided the length of the numbers to three and put the result in a variable. I checked if the length of the number is less than four if so, it simply returns the number. if not less than four, the program will check if the remainder when the length of the number divided by three is 0 if so it insert comma, at the -4 position of the number.

# • Do you feel your refactored solution is more readable than your initial solution? Why?

#     yes. it is easy to explain what is going on there, its less code and more readable than the initial solution.