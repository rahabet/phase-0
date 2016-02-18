# 0. Pseudocode

# Input: a number.
# Output: the fibonacci value of the input number
# Steps: take number and check
#        IF number is less than or equal to 1, and if it is RETURN 1
#        ELSE output the sum of the previous values.


# 1. Initial Solution

def fibonacci(n)
    return  n  if n <= 1
    fibonacci(n-1) + fibonacci(n-2)
end
fibonacci(10)


# 2. Refactored Solution

def fibonacci(n)
  n <= 1 ? n :  fibonacci(n-1) + fibonacci(n-2)
end
fibonacci( 10 )



# 3. Reflection
=begin
1)What concepts did you review or learn in this challenge?
    I did learn a little bit about recursion doing this challenge which I hope to dig in more
2)What is still confusing to you about Ruby?
    working on JavaScript for the past week and now coming to Ruby, it got me confused on my use of syntaxes.
3)What are you going to study to get more prepared for Phase 1?
    I don't think if I ever have enought time to go throught the things I have in mind but I will try my best to atleast have a good grounding on the things we already covered.
=end
