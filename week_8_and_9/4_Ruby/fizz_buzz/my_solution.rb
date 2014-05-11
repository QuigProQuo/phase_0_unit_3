# U3.W8-9: 


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode
# Create a method, with an array
# test the array for the following
# 	if variable is divisible by 3, set it to Fizz
#   if variable is divisible by 5, set it to Buzz
#   if variable is divisible by 15, set it to FizzBuzz


# 3. Initial Solution

def super_fizzbuzz(array)
  array.map do |i|
    if i%15 == 0
      i = 'FizzBuzz'
    elsif i%5 == 0
      i = 'Buzz'
    elsif i%3 == 0
      i = 'Fizz'
    else 
      i
    end
  end
end


# 4. Refactored Solution


# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

p super_fizzbuzz([3]*100) == ["Fizz"]*100
p super_fizzbuzz([5]*100) == ["Buzz"]*100
p super_fizzbuzz([15]*100) == ["FizzBuzz"]*100
p super_fizzbuzz([1,2,3]) == [1,2,'Fizz']
p super_fizzbuzz([15,5,3,1]) == ['FizzBuzz','Buzz','Fizz',1]




# 5. Reflection 
=begin

This was tough for me to do on my own. While I find that I can understand the syntax of ruby I still struggle to frame it.
I am note sure why this failed to work with is/else but worked with if/elsif. This made me currious to see what others did to accomplish
this task. With that in mind I liked how others implemented a case rather than if/elsif. This seemed to simplify the syntax.

=end 
