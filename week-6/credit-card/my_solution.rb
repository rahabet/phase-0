# Class Warfare, Validate a Credit Card Number

# I worked on this challenge with: Andria Reta .
# I spent [#] hours on this challenge.

# Pseudocode
#initialize
# Input: integer (16 digit card number)
# Output: integer or ArgumentError
# Steps:
# 1. new ArgumentError if card is not 16 digits
# 2. create instance variable for the integer

#validate
# Input: integer
# Output: the integer of the number multiplied by two for every other number
# Steps:
# 1. split the numbers and set it to a string
# 2. map the numbers to integer and add it into an array
# 3. we iterate through each element to find which ones have remainder zero
#     when they are divisible by two
# 4. we multiply the numbers by two

#sum
# Input: the new array
# Output: the sum of all the digits added together
# Steps:
# 1. we iterated through each number in the array
# 2. IF the number is greater that 9 subtract number from 9
#    ELSE it will print the number
# 3. sum all the elements in the array together check_card
# Input: the total sum of the array
# Output: boolean
# Steps:
# 1. IF total sum is divisible by 10 then return true
     ELSE return false

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  def initialize(card_num)
   @card_num = card_num
   raise ArgumentError.new("Card number must be 16 digits") if @card_num.to_s.length != 16
   validate
  end
  def check_card
    if @total_sum % 10 == 0
        puts "Yaay!!! you have recieved a valid credit card number"
        return true
    else
        puts "Nooo!!! you need another card"
      return false
    end
  end

private

  def validate
    @new_array=@card_num.to_s.split('') #split and change the numbersto strings
    @new_array.map!{|number| number.to_i} # map the new array to an interger
    @new_array.each_with_index.map do |num, index|
      if (index % 2 == 0)
          @new_array[index] = num*2
      end
    end
    sum
  end

  def sum
    @new_array.map! do |num|
       num > 9 ? num = num -9 : num
    end
      @total_sum = @new_array.inject(0){|sum,x| sum+x }
  end
end

number = CreditCard.new(4563960122001999)
p number.check_card


# Refactored Solution


# Reflection
=begin
1)What was the most difficult part of this challenge for you and your pair?
    the most difficult part was to figure out how to sum the elements like (12 = 1+2)
2)What new methods did you find to help you when you refactored?
    all the methods were familiar to me it is just using them together was kind of interesting. we don't know how to refactor this better than the way it is now so we agreed the initial solution is readable enough.
3)What concepts or learnings were you able to solidify in this challenge?
    I can say iterating through the array elements and using classes and instance variables.