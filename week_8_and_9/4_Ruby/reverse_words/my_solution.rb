# U3.W8-9: Reverse Words


# I worked on this challenge [by myself ].
#Kennedy

# 2. Pseudocode
# define random word for the word that will be reversed.
# write a method that will take a word and then output the reverse of it.


# 3. Initial Solution/ refactor
def reverse_words(str)
  	str.split.map{|word| word.reverse}.join(" ")
  end






# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
p reverse_words("Ich bin ein Berliner") == "hcI nib nie renilreB"
p reverse_words("dog") == "god"
p reverse_words("fire") == "erif"






# # 5. Reflection 
=begin
	This was pretty straight forward. Knowing that there are ruby elements that allow for reversing fairly easy.
	

=end