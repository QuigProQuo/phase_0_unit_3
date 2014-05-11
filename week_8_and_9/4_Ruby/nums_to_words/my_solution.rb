# U3.W8-9: Numbers to English Words


# I worked on this challenge [by myself, with: ].
#by myself

# 2. Pseudocode
=begin
Create a hash that contains numbers 1-10, 10-90(by tens) and set them equal to their english equivalent
test your inputed number based off of 



=end

# 3. Initial Solution

def conversion(number)
  words_hash = {0=>"zero",1=>"one",2=>"two",3=>"three",4=>"four",5=>"five",6=>"six",7=>"seven",8=>"eight",9=>"nine",
                    10=>"ten",11=>"eleven",12=>"twelve",13=>"thirteen",14=>"fourteen",15=>"fifteen",16=>"sixteen",
                     17=>"seventeen", 18=>"eighteen",19=>"nineteen",
                    20=>"twenty",30=>"thirty",40=>"forty",50=>"fifty",60=>"sixty",70=>"seventy",80=>"eighty",90=>"ninety"}
  if words_hash.has_key?number
    return words_hash[number] 
  else
    num_string = number.to_s.split(//)
      while num_string.size > 0      
        if num_string.size == 2
            return("and")
            return words_hash[(num_string.join.to_i) - (num_string.join.to_i)%10]            
            num_string.shift
        end
        if num_string.size > 4
          return(words_hash[(num_string[0,2].join.to_i) - (num_string[0,2].join.to_i) % 10])
        else
          return(words_hash[num_string[0].to_i]) 
        end
        return(scale[num_string.size])
        num_string.shift
      end
    end

end


# 4. Refactored Solution
def conversion(number)
  ones = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  tens = ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  if number < 19
    return ones[number-1]
  end
end



# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
p conversion(3) == "three"
p conversion(13) == "thirteen"
p conversion(23) == "twenty three"
p conversion(53) == "fifty three"
p conversion(93) == "ninety three"




# 5. Reflection 
=begin 

While doing this assignment I came across a gem called humanize which will translate numbers into words up to 156 numbers long.
I found this assignment to be a bit challenging because of the endless amount of combinations you can do.
For purpose of this exercise I did any number between 0-99

my original solution is one that can be found on the web. After taking time to think how this can be reconstructed I figured by
 splitting the numbers into two arrays would allow me to test the number based on which array it falls under.





