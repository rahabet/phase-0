#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
  attr_accessor :name

  def initialize
    @name = 'Bethelhem'
  end
end

class Greetings

  def initialize
    @name_data = NameData.new
  end

  def greet
    'Hello, I am ' + @name_data.name
  end
end

salute = Greetings.new
p salute.greet

=begin

release-1

1)What are these methods doing?
    there are a lot of methods defined for printing info, name, age, changing the name, age
2)How are they modifying or returning the value of instance variables?
    the values for the instance variables is initialized first and it is modified by just passing the instance variables and by assigning it to a new value.

release-2

1)What changed between the last release and this release?
    an attr_reader method for age is added
2)What was replaced?
    a method what_is_age is replaced by the attr_reader :age
3)Is this code simpler than the last?
    yes it is simple. a block of code is replaced just in a one line of code.and also it is readable.

release-3

1)What changed between the last release and this release?
    an attr_writer method for age is added
2)What was replaced?
    a method change_my_age is replaced by the attr_writer :age
3)Is this code simpler than the last?
    yes the methods are getting deleted and the code gets simpler to understand what it does.

reflection

1)What is a reader method?
    a reader is simply returns a value or state outside of the class but do not change it.
2)What is a writer method?
    a writer allows you to change the value of the variable outside of the class,but it is not readable
3)What do the attr methods do for you?
    by defining an attr method according to your needs(reader,writer or both), you are able to simplify the code you are writing.
4)Should you always use an accessor to cover your bases? Why or why not?
    eventhough it sounds like a good idea to just use accessor to play it safe but it may be dangerous for the security of the data and also may be hard for debugging.
5)What is confusing to you about these methods?
    the methods seems pretty easy what challenged me to undersrtand in this challenge is creating instances of a class inside another class. which is still vague to me but hopefully will get to understand it better later on the week.

=end



