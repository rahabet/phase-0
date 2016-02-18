# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
# Input: a number.
# Output: the fibonacci value of the input number
# Steps: take number and check
#        IF number is less than or equal to 1, and if it is RETURN 1
#        ELSE output the sum of the previous values.

# 1. define a method called is_fibonacci? that takes one argument
# 2. assign n = 1 and m = 1
# 3. until m >= argument calculate terms in the fibinacci sequence
# 4. we want n to become m, and at the same time for  m = m+n
# 5. end our until loop
# 6. return true or false depending on if it's a fib number or not


# Initial Solution

def is_fibonacci?(num)
    n = 1
    m = 1
    if num < 1
        return false
    else
        until m >= num
            n, m = m, n + m
        end
        return m == num
    end
end
# p is_fibonacci?(5) == true
# p is_fibonacci?(1000) == false
# p is_fibonacci?(8670007398507948658051921) == true
# p is_fibonacci?(927372692193078999171) == false
# p is_fibonacci?(10946) == true
# p is_fibonacci?(0) == false
# p is_fibonacci?(-923478347) == false




# Refactored Solution



# Reflection

=begin
1)What concepts did you review or learn in this challenge?
    I did learn a little bit about recursion doing this challenge which I hope to dig in more
2)What is still confusing to you about Ruby?
    working on JavaScript for the past week and now coming to Ruby, it got me confused on my use of syntaxes.
3)What are you going to study to get more prepared for Phase 1?
    I don't think if I ever have enought time to go throught the things I have in mind but I will try my best to atleast have a good grounding on the things we already covered.
=end