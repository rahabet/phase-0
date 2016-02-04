# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:4
# ============================================================
  p array[1]
  p array[1][1]
  p array[1][1][2]
  p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:1
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:1
# ============================================================

p [:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

  number_array.map do |number|
    if number.kind_of?(Array)
      number.map  {|inner| inner + 5}
    else number + 5
    end
  end
  p number_array


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
startup_names.each do |word|
 if word.is_a?(String)
   word << "ly"
 else
 word.each do |inner_element|
   if inner_element.is_a?(Array)
     inner_element.each do |third_layer_element|
        third_layer_element << "ly"
      end
   else
     inner_element << "ly"
   end
 end
end
end

p startup_names

#Reflection

=begin
1)What are some general rules you can apply to nested arrays?
    I think what helped us to solve the challenges was that we play around on irb to figure out which index holds what. and also when we were iterating through, we approached from the most inner array to the outside which was helpful.
2)What are some ways you can iterate over nested arrays?
    we can iterate using .each iterator and going through each element, the outer array or the inner array.
3)Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
    we used the same method that we know .each method .is_a and .map method its because we are already familiarized with this methods and it was easy to apply them. I haven't used kind_of method before so that was new and useful.
=end