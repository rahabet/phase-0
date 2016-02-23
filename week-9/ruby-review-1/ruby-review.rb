#. Pseudocode

    # Input: an array of intergers
    # Output: Fizzbuzzed array.
    # Steps: Define a method super_fizzbuzz.
             # Take the array as an input to creat a new array depending on:
             # IF the elements of the array is divisible by 3
             # RETURN Fizz
             # IF the elements of the array is divisible by 5
             # RETURN Buzz
             # IF the elements of the array is divisible by 3
             # RETURN FizzBuzz
             # ELSE RETURN enteger.

# Initial Solution

def super_fizzbuzz(array)
    array.map! {|number|
    if number % 15 == 0
        "FizzBuzz"
    elsif number % 3 == 0
        "Fizz"
    elsif number % 5 == 0
         "Buzz"
    else
       number
    end
    }
    return array
end

super_fizzbuzz([1,2,3,4,5,10,15,20,25,30])

# Reflection

# What concepts did you review in this challenge?
# => I reviewed the use of map method which is straight forward.
# What is still confusing to you about Ruby?
# => Ruby is pretty direct comparing javaScript but coming back to ruby now feels like i forgot how it works.
# What are you going to study to get more prepared for Phase 1?
# => I will do review exercises and also try to review all the concepts we covered so far.