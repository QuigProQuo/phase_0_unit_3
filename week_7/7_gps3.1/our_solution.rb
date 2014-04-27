# U3.W7: Build an Electronic Grocery List!
 
# Your full names:
# 1. John Quigley
# 2. Kai Prout
 
# User Stories (As many as you want. Delete the statements you don't need)
# As a user, I want to display list
# As a user, I want to add item
# As a user, I want to remove an item
# As a user, I want to check off item
# As a user, I want to incomplete/complete lists
# As a user, I want to specify quantity
 
# Pseudocode
# Create a class, called grocery_list 
# Create an initialized method, equal to an argument, that takes groceries
#  Within method, has 2 arrays, completed & incompleted 
#   Where the argument is shovled into the complete array
# Create method dislay list, return current list's
# Create another method add item, set to argument item_added
#  Shovled item_added into the incomplete array
# Create another method remove item, set to argument item_removed
# Create another method incomplete_complete, set to argument item_list

 
# Your fabulous code goes here....

class GroceryList
class GroceryList
  
  def initialize(groceries)
    @incomplete = []
    @incomplete << groceries
    p @incomplete.flatten!
    @complete = []
    
  end

  def add(item)
    @incomplete << item
    return "#{item.capitalize} was added to list!"
  end

  def remove(item)
    @incomplete.delete(item) { "not found" }
    return "#{item.capitalize} was removed to list!"    
  end

  def display
      puts "Incomplete Items:"
      @incomplete.each { |i| puts i.capitalize }
      puts "<------------------>"
      puts "Completed Items:"
      @complete.each { |i| puts i.capitalize }
    return "All items are displayed!"
  end

  def checkoff(item)
    item = @incomplete.delete(item)
    @complete << item if item != nil
  end
  
end



# DRIVER CODE GOES HERE. 
def assert
  raise "Alert Fail!" unless yield
end

groceries = %w(bannas apple potatoes)
grocery = GroceryList.new(groceries)
grocery.add(oranges)
assert {grocery.display == "All items are displayed!" }
grocery.remove(oranges)
assert {grocery.display == "All items are displayed!" }
grocery.checkoff(apple)
assert {grocery.display == "All items are displayed!" }
assert {grocery.add(juice) == "Juice was added to list!" }



# Future Idea's
=begin
  - We thought of turning the Array's into Hashes to count for quantity
  - Also thought of If/Else statements for when items are duplicated
=end


#Refelction
=begin
 This was by far the best GPS I have partaken in.
 RIck Rubio our instructor and Kai Prout my partner were both a pleasure to work Within
 Kai and I were able to effectively communicate our vision for the code and bring the elements togehter nicely.
 I think pairing with Kai really made me that much more comfortable with the guided pairing structure of Driver/Navigator
 We made two fairly smooth transitions at times were one knew more than the other and it helped us accomplish our task in a timely manor

 =end