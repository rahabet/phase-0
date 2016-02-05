# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [3] hours on this challenge.


# Release 0: Pseudocode

# Outline: Bingo board is created by nesting five arrays within one master array. Letters and numbers will be randomly generated. Letters will indicate the index to be checked within each array. B[0], I[1], N[2], G[3], 0[4]. If the randomly generated number is located within the index indicated by the randomly generated number (from "BINGO"), that number will be replaced with an x.

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # def generate
  #   Randomly pull one string from an Array of ("b", "i", "n", "g", "o")
  #   Randomly pull one number from the range 1-00
  # end

# Check the called column for the number called.
    # It will iterate through the numbers and check if number is equal to random number it gets
    # IF element is in the array then it will put x if not just return the number
    # Display a column to the console
    # Display the board to the console (prettily)

# Initial Solution

 class BingoBoard

 def initialize(board)
   @bingo_board = board
 end

 def generate
   @letter = ['B','I','N','G','O'].sample
   @number = rand(1..100)
 end

 def call
   generate
   @bingo_board.map! do |element|
     if element.include?(@number)
       element.map! { |num| num == @number ? 'X' : num}
     else
       element
     end
   end
 end
end

# Refactored Solution


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
p new_game.call

#Reflection
=begin
1)How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
    psuedocoding this challenge was difficult so i vaguely described the main things i need to do and then do the small steps in the program
2)What are the benefits of using a class for this challenge?
    The use of the class is important because it organizes the code and it allows the methods to communicate to  each other
3)How can you access coordinates in a nested array?
    I iterated and looped through each element using the .map method
4)What methods did you use to access and modify the array?
    I used .map method to modify the result of the array.
5)Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
    I wanted to apply .transpose method but i keep getting error so I decided to leave it out. but i think it is something usable for this case.other than that, i didn't used any new method.
6)How did you determine what should be an instance variable versus a local variable?
    everything that i need to use through out the methods should be instance variable but if i only need it specifically for one method, it can be local variable
7)What do you feel is most improved in your refactored solution?
    I haven't got anything to refactor yet but may be I will get back to it later on the week.
=end

