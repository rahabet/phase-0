
# I worked on this challenge by myself.

# 0. Pseudocode

# Input: One argument that is an integer.
# Output: number of sides and which side is rolled
# Steps: create a Die class,
#        initialize sides,
#        raise ArgumentError
#    IF  sides < 1
#    END IF
#        define sides method
#        define roll method


# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    raise ArgumentError.new("Number must be one or more ") if @sides < 1
  end

 def sides
    @sides
  end

  def roll
      return rand(1..@sides)
  end
end

d1 = Die.new(6)

p d1.sides == 6
p d1.roll.is_a?(Integer) == true
p (d1.roll >= 1) == true
p (d1.roll <=6) == true


# 3. Refactored Solution



# 4. Reflection

# • What is an ArgumentError and why would you use one?

#   An argument error is raised when the argument are wrong and there isn’t a
#   more specific exception class.

# • What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

#   I didn't used any new methods except creating the class. I didn't go on to refactoring because am tired and am running out of time to do the other stuff.

# • What is a Ruby class?

#   A class is the blueprint from which individual objects are created. you write the blueprint once.

# • Why would you use a Ruby class?

#   classes are important for organizing your code. You don’t want many different methods and variable that do overlapping things so you create classes.

# • What is the difference between a local variable and an instance variable?

#   A local variable is usable inside a method in which it is defined. we can not able to access it outside of that method but instance variables are accessible anywhere else in the instance of the class in which it has been defined. so even if multiple methods in that class, we can use instance variables through out all.

# • Where can an instance variable be used?

#   it can be used anywhere in the class but when you define the instance
#   variable is important. If you define an instance variable in one method, but try to use it in another method before calling the first one, the instance variable will have a nil value.
