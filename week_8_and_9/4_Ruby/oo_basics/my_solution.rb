# U3.W8-9: OO Basics: Student


# I worked on this challenge [by myself].
# Kennedy

# 2. Pseudocode
# create a class Student. 
# define initialize to input of student
# define the average of students 
# write a method that aould set A for >=90%, B for >=80%, C for >= 70%, D for >= 60% and F for < 60%
# create a hash for students input and fill in their scores
#define linear search for students

# 3. Initial Solution

class Student
  attr_accessor :scores, :first_name
 
  def initialize(input_student)   
    @first_name = input_student[:first_name] 
    @scores = input_student[:scores]
  end
  
  def average
    scores.inject(:+).to_f / scores.length
  end
  
  def letter_grade
    case average
    when 0...60
      "F"
    when 60...70
      "D"
    when 70...80
      "C"
    when 80...90
      "B"
    else
      "A"
    end
  end
end
 
 
input_students = [{first_name: "Sam", scores: [100,100,100,0,100]},
                  {first_name: "John", scores: [0,0,0,0,0]},
                  {first_name: "Tammy", scores: [30,30,10,50,0]},
                  {first_name: "Gaby", scores: [0,0,0,0,0]},
                  {first_name: "Tim", scores: [1,34,58,67,34]}]
 
students = []
input_students.each do |student|
  students << Student.new(student)
end
 
 
def linear_search(students, name)
  return_index = ""
  students.each_with_index do |student,index| 
    if name == student.first_name
      return_index = index
      break
    else
      return_index = -1
    end
  end
  return_index
end
 

# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
# Tests for release 0:

p students[0].first_name == "Sam"
p students[0].scores.length == 5



# Tests for release 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Tests for release 2:

p linear_search(students, "Sam") == 0
p linear_search(students, "NOT A STUDENT") == -1

#Assert Statments

def assert
  raise "Assertion failed!" unless yield
end
first_name = "Sam"
scores = 5 
average = 80 
letter_grade = 'B'
assert {first_name == "Sam"}
assert {scores == 5}
assert {average == 80}
assert {letter_grade == 'B'}



# 5. Reflection 

=begin 

This was beyond my understanding. Fortunately there were examples on the web that I found to work effectively.
I don't know that I would have been able to do this on my own. Rather pairing with Kennedy allowed me to understand anothers solution.
