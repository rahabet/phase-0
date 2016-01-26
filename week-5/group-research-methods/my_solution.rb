# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4 (Bethelhem Assefa)

def my_array_deletion_method!(i_want_pets, letter)
  i_want_pets.delete_if { |item| item.to_s.include?(letter) }
end
my_array_deletion_method!(i_want_pets,"a")
p i_want_pets

def my_hash_deletion_method!(my_family_pets_ages, name)
  my_family_pets_ages.delete_if { |pet,age| pet.include?(name) }
end
my_hash_deletion_method!(my_family_pets_ages, "George")
p my_family_pets_ages

# Identify and describe the Ruby method(s) you implemented.

   # I used a delete_if method because it deletes every element of self for which block evaluates to true. Meaning that

   # for my_array_deletion_method! it deletes all the string that contains the letter provided and

   # for my_hash_deletion_method! it deletes the item that is equal to the name argument.

 # Teach your accountability group how to use the methods

   # The method is pretty forward to use. there are 3 options to use a delete-method in an array.

   #  .delete : which deletes all items from the array that are equal to obj.
   #      forexample : array=["a","b","c"] and if we use array.delete("b") the method will remove "b" from the array.

   #  .delete_at : in this one we need to provide the index number where we want to delete item. so it will go ahead and remove it from the array.
   #     using the previous example delete_at(1) removes "b" since it is located on index 1

   #  .delete_if is the third option and which i used for this exercise. since our i_want_pets array contains numbers, make sure to change the item.to_s other wise, you will encounter an error message.



# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#