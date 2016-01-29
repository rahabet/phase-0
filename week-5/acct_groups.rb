#Pseudocode

  #Input : list of names
  #Output: a small group of people from the names
  #Steps :
    # create a container to hold all the names
    # slice the names into a group of 5 people
    # print out the names in the new group

#Initial Solution

 def accountability_groups(seaLions)
  new_groups = seaLions.each_slice(5).to_a
  new_groups.each_with_index do |name,index|
      puts "#{name.join(",")} => are group: #{index}"
    end
end
p accountability_groups ["Alivia Blount","Alyssa Page","Alyssa Ransbury","Andria Reta","Austin Dorff","Autumn McFeeley","Ayaz Uddin","Ben Giamarino","Benjamin Heidebrink","Bethelhem Assefa","Bobby Reith","Dana Breen","Brett Ripley","Rene Castillo","Justin J Chang","Ché Sanders","Chris Henderson","Chris Pon","Colette Pitamba","Connor Reaumond","Cyrus Vattes","Dan Heintzelman","David Lange","Eduardo Bueno","Liz Roche","Emmanuel Kaunitz","FJ","Frankie Pangilinan","Ian Fricker","Ian Thorp","Ivy Vetor","Jack Baginski","Jack Hamilton","JillianC","John Craigie","John Holman","John Maguire","John Pults","Jones Melton","Tyler Keating","Kenton Lin","Kevin Serrano","wolv","Kyle Rombach","Laura Montoya","Luis Ybarra","Charlotte Manetta","Marti Osteyee-Hoffman","Megan Swanby","Mike London","Michael Wang","Michael Yao","Mike Gwozdek","Miqueas Hernandez","Mitchell Kroska","Norberto Caceres","Patrick Skelley","Peter Kang","Philip Chung","Phillip Barnett","Pietro Martini","Robbie Santos","Rokas Simkonis","Ronu Ghoshal","Ryan Nebuda","Ryan Smith","Saralis Rivera","Sam Assadi","Spencer Alexander","Stephanie Major","Taylor Daugherty","Thomas Farr","Maeve Tierney","Tori Huang","Alexander Williams","Victor Wong","Xin Zhang","Zach Barton"]

#Refactor

#Reflection

# What was the most interesting and most difficult part of this challenge?
   # it is interesting to try to create a new group from a list of all that names but at the same time challenging how to make it automatically create the groups.
# Do you feel you are improving in your ability to write pseudocode and break the problem down?
   # I still am struggling with psedocode. my pseudocode was not that much helpful i think i need more practice.
# Was your approach for automating this task a good solution? What could have made it even better?
  # I have no idea how could have I made it any better so i leave it this way for now
# What data structure did you decide to store the accountability groups in and why?
 # I used arrays and i thought it is easier for this case. I somehow start thinking may be if i create a hash and push the value and make the index as a key that might have saved me some time trying to figure out how to create the group number along hmmm. anyway I used arrays.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

 # This is the initial solution which seems like refactored already.
