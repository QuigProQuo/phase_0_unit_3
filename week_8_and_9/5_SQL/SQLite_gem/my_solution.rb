# U3.W7: BONUS Using the SQLite Gem

# I worked on this challenge [by myself, with:]

require 'sqlite3'


$db = SQLite3::Database.open "congress_poll_results.db"


def print_arizona_reps
  puts "AZ REPRESENTATIVES"
  az_reps = $db.execute("SELECT name FROM congress_members WHERE location = 'AZ'")
  az_reps.each { |rep| puts rep }
end

def print_longest_serving_reps(minimum_years)  #sorry guys, oracle needs me, i didn't finish this!
  puts "LONGEST SERVING REPRESENTATIVES"
  puts $db.execute("SELECT name FROM congress_members WHERE years_in_congress > #{minimum_years}")
end

def print_lowest_grade_level_speakers
  puts "LOWEST GRADE LEVEL SPEAKERS (less than < 8th grade)"
   puts $db.execute("SELECT name, grade_current FROM congress_members WHERE grade_current < #{grade}"
end

def print_separator
  puts 
  puts "------------------------------------------------------------------------------"
  puts 
end

def print_state_reps_nj_ny_me_fl_ak
    puts "State Representatives From New Jersey, New York, Maine, Florida, and Alaska"
    puts $db.execute("SELECT name, location FROM congress_members WHERE location IN ('NJ', 'NY', 'ME', 'FL', 'AK')")
end

print_arizona_reps

print_separator
print_longest_serving_reps(35)
# TODO - Print out the number of years served as well as the name of the longest running reps
# output should look like:  Rep. C. W. Bill Young - 41 years

print_separator
print_lowest_grade_level_speakers 
# TODO - Need to be able to pass the grade level as an argument, look in schema for "grade_current" column

print_separator
print_state_reps_nj_ny_me_fl_ak
# TODO - Make a method to print the following states representatives as well:
# (New Jersey, New York, Maine, Florida, and Alaska)


##### BONUS #######
# TODO (bonus) - Stop SQL injection attacks!  Statmaster learned that interpolation of variables in SQL statements leaves some security vulnerabilities.  Use the google to figure out how to protect from this type of attack.

# TODO (bonus)
# Create a listing of all of the Politicians and the number of votes they recieved
# output should look like:  Sen. John McCain - 7,323 votes (This is an example, yours will not return this value, it should just 
#    have a similar format)
def print_politicians_votes_recieved
	puts "Votes Recieved by Congress member"
	puts $db.execute("SELECT name|| ' - ' ||COUNT(voter_id) FROM votes JOIN congress_members ON(congress_members.id = politician_id GROUP BY name")
end

print_politicians_votes_recieved

# Create a listing of each Politician and the voter that voted for them
# output should include the senators name, then a long list of voters separated by a comma
def print_voters_who_voted_for_politician
	puts "People & Who they voted for"
	puts $db.execute(SELECT name || ' - ' ||GROUP_CONCAT(first_name|| ' ' ||last_name, ', ')FROM congress_members JOIN votes ON congress_members.id = cotes.politician_id JOIN voters ON voters.id = votes.voter_id GROUP BY name)

end

print_voters_who_voted_for_politician

# * you'll need to do some join statements to complete these last queries!


	
rescue Exception => e
	
end


=begin
# REFLECTION- Include your reflection as a comment below.

How does the sqlite3 gem work?  
	It can be used to create a database, define tables within it, insert and change rows, run queries and managae an SQLite database file. This program is a single executable file on the host machine. It also serves as an example for writing applications that use the SQLite library.

What is the variable `$db` holding?  
	It is holding the database

Try to use your knowledge of ruby and OO to decipher this as well 
as how the `#execute` method works.  Take a stab at explaining the line 
 `$db.execute("SELECT name FROM congress_members WHERE years_in_congress 
   > #{minimum_years}")`.  

   The above statement reads require database execute, select value names from the column congress_members where the number of years in congress id greater than the .... 

Try to explain this as clearly as possible for  your fellow students.  
If you're having trouble, find someone to pair on this explanation with you.






=end