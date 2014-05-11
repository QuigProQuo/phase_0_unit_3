# U3.W8-9: What the Scope


# I worked on this challenge [by myself, with: ].
#By myself

# 1. What are the problems in the error messages?



# 2. Original Code

x = 22
 
class Person
  @@x
  VAR_6 = "Ruby"
 
  attr_reader :var_3, :var_4
 
  def initialize(var_5 = VAR_6)
    @var_3="Law of Demeter"  
  end
 
  def do_stuff(var_7=[1,2,3])
    var_7.each do |var_8|
      var_9 += var_8 + 2
    end
  end
end

# 3. Modified Code (with scope identified as comments)


# $var_1 = 22
 
# class Person
#   @@var_2
#   var_3 = "Ruby"
 
#   attr_reader :var_4, :var_5
 
#   def initialize(var_6 = var_3)
#     @var_4="Law of Demeter"  
#   end
 
#   def do_stuff(var_7=[1,2,3])
#     do_stuff.each do |var_8|
#       var_9 += var_8 + 2
#     end
#   end
# end




# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE






# 5. Reflection 
