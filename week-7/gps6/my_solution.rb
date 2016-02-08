# Virus Predictor

# I worked on this challenge with: nancy cardenas .
# We spent 1:20 hours on this challenge.

# what the program does

# This program is taking the STATE_DATA hash (that actually have another hash) and using the information to calculate the effects that a virus has in each state.

# EXPLANATION OF require_relative

#  require_relative:It grants access to a state_data file. when you use require to load a file, you are usually accessing funcitonality that has been properly installed and made accessible in your system. but require_relative is giving access for something which is not a ruby method
#
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
#it creates instance variable for the state, population_density and population
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
#calling the private methods from the  class VirusPredictor.
    predicted_deaths
    speed_of_spread
  end

  private # makes methods inaccessible from outside the class

  def predicted_deaths
    # predicted deaths is solely based on population density
    #This method is calculating the number of deaths per state.
    # it creates a variable number_of_deaths which value will be calculated by the @population runned through a constant function and the funciton used to calculate it will depend on the size of @population_density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    #This method is calculating the speed of deaths per state.
    # it creates a variable speed, which value will depend on @population_density as there are conditionals that evaluate against fixed parameters the value of @population_density
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

STATE_DATA.each do |state,data| VirusPredictor.new(state,data[:population_density],data[:population]).virus_effects
end

#=======================================================================
# Reflection Section
=begin

1)What are the differences between the two different hash syntaxes shown in the state_data file?
    The outer hash was made of a key and the hash rocket symbol. The inner hash used symbols to represent the relevant data for each state.
2)What does require_relative do? How is it different from require?
    require_relative grants access to a state_data file and uses the directory of where that program itself resides but in the case of require, it uses the current directory that you are running the program from
3)What are some ways to iterate through a hash?
    we used .each method to iterate through the hash and looked at the keys and values. I have learned through the exercise how to access the individual symbol within the value of each key in the hash
4)When refactoring virus_effects, what stood out to you about the variables, if anything?
    at first the variables were helpful on understanding what the code works but during refactoring I saw how repetitive it is since they are already defined.
5)What concept did you most solidify in this challenge?
    working on a nested hash. I have learned on working with a nested array during last week but never able to practice it in hash till today so it was great.

=end