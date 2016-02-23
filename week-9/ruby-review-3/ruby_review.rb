# U2.W6: Testing Assert Statements

# I worked on this challenge  with: Kevin Serrano.


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
=begin

  set name equal to "bettysue"
  we call assert function
  if the statement evaluates to true, assert returns nil
  if false, assert raises error
  raise an error unless the code block passed in is true


=end
# 3. Copy your selected challenge here

class CreditCard
  def initialize(number)
    unless number.to_s.length == 16
      raise ArgumentError.new("The input has to be 16 digits long!")
    end
    @number = number
  end

  def check_card
    ccnumber = @number.to_s.split('')
    ccnumber.map! do |num|
      num.to_i
    end
    doubling(ccnumber).reduce(:+) % 10 == 0 ? true : false
  end

  private

  def doubling(array)
    iter = 0
    for i in (0..14).step(2)
      array[i] *= 2
      if array[i] > 9
        array[i] = (array[i] % 10) + 1
      end
    end
    return array
  end
end

# describe CreditCard do
#   describe '#initialize' do
#     it 'Expects a single argument for the card' do
#       expect(CreditCard.instance_method(:initialize).arity).to eq 1
#     end

#     it 'raises ArgumentError on card > 16' do
#       expect { CreditCard.new(11111111111111112) }.to raise_error(ArgumentError)
#     end

#     it 'raises ArgumentError on card < 16' do
#       expect { CreditCard.new(1) }.to raise_error(ArgumentError)
#     end
#   end

#   describe '#check_card' do
#     it 'expects no arguments to be passed' do
#       expect(CreditCard.instance_method(:check_card).arity).to be_zero
#     end

#     it 'returns true for a valid card' do
#       card = CreditCard.new(4408041234567901)
#       expect(card.check_card).to eq true
#     end

#     it 'returns false for a bad card' do
#       card = CreditCard.new(4408041234567906)
#       expect(card.check_card).to eq false
#     end
#   end
# end



# 4. Convert your driver test code from that challenge into Assert Statements

assert {CreditCard.instance_method(:initialize).arity == 1}
assert {
  begin
    CreditCard.new(11111111111111112)
    false
  rescue
    true
  end
  }
assert {
  begin
    CreditCard.new(1)
    false
  rescue
    true
  end
}
assert {CreditCard.instance_method(:check_card).arity == 0}
card = CreditCard.new(4408041234567901)
assert {card.check_card == true}
card = CreditCard.new(4408041234567906)
assert {card.check_card == false}

# 5. Reflection

# What concepts did you review in this challenge?
# =>  I have learned how an assert statement works and it really is great to write it by ourselves.
# What is still confusing to you about Ruby?
# =>  I wouldn't say i completely get it yet but it was a nice start working with TDD.
# What are you going to study to get more prepared for Phase 1?
# => If I manage to finish up everything earlier, I would like to dig in more on writing assert or rspec tests.

