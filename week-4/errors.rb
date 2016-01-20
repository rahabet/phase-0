# Analyze the Errors

# I worked on this challenge by myself.
# I spent [1:45] hours on this challenge.

# --- error -------------------------------------------------------

"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?

#    It is errors.rb

# 2. What is the line number where the error occurs?

#    The error occurs on line 244

# 3. What is the type of error message?

#    syntax error

# 4. What additional information does the interpreter provide about this type of error?

#    The interpretor didn't expect an end-of-input but is expecting $end

# 5. Where is the error in the code?

#    The interpretor did not expect the page to be over but an end at the end of 'write your  own reflection below as a comment.'

# 6. Why did the interpreter give you this error?

#    am not sure but am guessing it's because we are missing an end at the end of the page.


# --- error -------------------------------------------------------

 movie = 'south_park'

# 1. What is the line number where the error occurs?

#    The error occurs on line 47

# 2. What is the type of error message?

#    There is undefined local variable or method

# 3. What additional information does the interpreter provide about this type of error?

#    it shows (NameError)

# 4. Where is the error in the code?

#    it puts it in a quote 'south-park' and tells in main:object

# 5. Why did the interpreter give you this error?

#    because in ruby either we define a method or a variable to hold a string. if it is a variable we put ''around the word but if its a method then we just need to define it first.

# --- error -------------------------------------------------------

def cartman()
end

# 1. What is the line number where the error occurs?

#   The error occurs on line 71

# 2. What is the type of error message?

#    It is undefined method

# 3. What additional information does the interpreter provide about this type of error?

#    It says there is (NoMethodError)

# 4. Where is the error in the code?

#    it shows in a quote 'cartman' and tells its in the main:object

# 5. Why did the interpreter give you this error?

#    because we have a method called cartman() with out defining it so the write way is to use def cartman ()and end.

# --- error -------------------------------------------------------

def cartmans_phrase (feel)
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?

#    The error occurs on line 96

# 2. What is the type of error message?

#    wrong number of arguments (1 for 0)

# 3. What additional information does the interpreter provide about this type of error?

#    It tells it is an argument error .

# 4. Where is the error in the code?

#    The interpretor shows its on line 100 in the <main>

# 5. Why did the interpreter give you this error?

#    It is because we didn't pass an argument when we defining the method but we passed an argument when we call the method. so ruby got confused what to return.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says ("I hate you")

# 1. What is the line number where the error occurs?

#    The error occurs on line 124

# 2. What is the type of error message?

#    wrong number of arguments (0 for 1)

# 3. What additional information does the interpreter provide about this type of error?

#     The interpretor tells that its an argument error.

# 4. Where is the error in the code?

#     The interpretor shows that the error is on line 128 in <main>

# 5. Why did the interpreter give you this error?

#    Because we defined a method and pass an argument but we didn't provide an argument when we call the method. the right way will be cartman_says ("I hate you!")



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!','george')

# 1. What is the line number where the error occurs?

#    The error occurs on line 154

# 2. What is the type of error message?

#    wrong number of argument (1 for 2)

# 3. What additional information does the interpreter provide about this type of error?

#    The interpretor tells that it is an argument error

# 4. Where is the error in the code?

#    The interpretor shows the error occured on line 158 <main>

# 5. Why did the interpreter give you this error?

#    Because we passed in two arguments and provided only one value when we call the method.

# --- error -------------------------------------------------------

 5 * "Respect my authoritay!"
"Respect my authoritay!" *5

# 1. What is the line number where the error occurs?

#    The error occurs on line 182

# 2. What is the type of error message?

#    string can not be coerced into fixnum

# 3. What additional information does the interpreter provide about this type of error?

#    The interpretor tells that it is a type error

# 4. Where is the error in the code?

#    The interpretor tells it is on line 182

# 5. Why did the interpreter give you this error?
#    Because we can't really multiply a number to string. it means 'respect my authority' sets of 5 which doesn't make sense. but it works if it is reversed cuz all it means if reversed is 5 sets of 'respect my authoritay' added together.

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?

#    The error occurs on line 206

# 2. What is the type of error message?

#    '/' divided by zero

# 3. What additional information does the interpreter provide about this type of error?

#    The interpretor tells that there is a ZeroDivisionError

# 4. Where is the error in the code?

#    It tells it is in line 206

# 5. Why did the interpreter give you this error?

#    Because we can not divide a number by zero.


# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?

#    The error occurs on line 232

# 2. What is the type of error message?

#    it says it cannot load such file

# 3. What additional information does the interpreter provide about this type of error?

#    The interpretor provides the path that am in users/beth/.../cartmans_essay.md and says load error

# 4. Where is the error in the code?

#    The interpretor tells the error is on line 232

# 5. Why did the interpreter give you this error?

#    Because I don't have a file called 'cartmans_essay.md' stored on my laptop and it couldn't find it to require it.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# • Which error was the most difficult to read?

  #the second one (unexpected end-of-input ) was hard for me to analyze. am not sure whether I answered it right or not.

# • How did you figure out what the issue with the error was?

  #reading the error message, considering the suggestion that the interpreter gives and apply the knowledge I have in ruby so far.

# • Were you able to determine why each error message happened based on the code? 

  #Mostly yes. In the challenge, the message was descriptive enough so it wasn’t that hard to find the errors from the code.

# • When you encounter errors in your future code, what process will you follow to help you debug?

  #Identify in what document, what line, what is the message, if there is any additional suggestion given by the interpreter, go to the code and analyze to see whats missing and fix.
