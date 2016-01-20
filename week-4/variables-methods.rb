
https://github.com/rahabet/phase-0/blob/master/week-4/address/my_solution.rb

https://github.com/rahabet/phase-0/blob/master/week-4/math/my_solution.rb

```
puts "what's your first name?"
first_name = gets.chomp
puts "what's your middle name?"
middle_name = gets.chomp
puts "what's your last name?"
last_name = gets.chomp
puts 'Hello,' + ' ' + first_name + ' ' + middle_name + ' ' + last_name + '!'
puts "greetings to you ms/mr #{first_name} #{middle_name} #{last_name}!"

```
------------------------------------------------------------

```
puts "what's your favorite number?"
fav_num = gets.chomp
fav_num = fav_num .to_i + 1
puts ' hmm that is ok but here is a better and bigger number:' + ' ' + fav_num .to_s
```
------------------------------------------------------------

# • How do you define a local variable?

#Local variable begin with a lowercase letter or _. The scope of a local variable ranges from class, def, or do to the corresponding end or from a block’s opening brace to its close brace{}.

# • How do you define a method?

#methods are things that do stuff. They are a reusable section of the code written to perform a specific task in a program. Methods have three parts. The header which has the def keyword, the body which is a code block that describes the procedure the method carries out and  the end keyword where it ends the method.

# • What is the difference between a local variable and a method?

# Variables are not objects by them selves. The difference is that variables are the place holders for the objects in ruby (such as strings, integers and floats) this objects are like nouns in english and a method are like verbs. they need each other to work properly as we can’t have a verb with out a sound to do the verb.

# • How do you run a ruby program from the command line?

#for example if we have a ruby file called example.rb then we run it from the command line by typing ruby example.rb. Make sure that you are in a folder where you have the example.rb when you run it.

#• How do you run an RSpec file from the command line?

#by simply writing rspec and the name of the spec file .rb . it looks like spec.example_spec.rb …

#• What was confusing about this material? What made sense?

#I understood the main concepts of method but working on 4.3.1 was a bit challenging for me. I did the code right but i put "puts" at the beginning and keep failing but finally i understood what puts actually does and why I was failing.
