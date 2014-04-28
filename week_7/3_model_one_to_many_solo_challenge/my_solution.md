# U3.W7: Modeling a Real-World Database (SOLO CHALLENGE)

## Release 0: Users Fields

id, user_name, first_name, last_name, bio, twitter_link, photo, header, tweets

## Release 1: Tweet Fields

id, user_id, text, photo, location, length, update_at

## Release 2: Explain the relationship
The relationship between `users` and `tweets` is: 

This relationship is one to many.
Users and tweets form this relationship because one user can have many tweets but a tweet only has one user

## Release 3: Schema Design
![User/Tweets](/model_comp.tiff)

## Release 4: SQL Statements

SELECT text FROM tweets WHERE user_id ="QuigProQuo"
- all the tweets for a certain user id

SELECT text FROM tweets WHERE user_id = 'QuigProQuo' AND updated_at > '2014-04-16'
- the tweets for a certain user id that were made after last Wednesday (whenever last Wednesday was for you)

SELECT text FROM users JOIN twwets ON users.id WHERE twitter_name = 'QuigProQuo'
- all the tweets associated with a given user's twitter handle

SELECT twitter_name FROM users JOIN tweets ON user.id = user_id WHERE tweet_id ='#ID'
- the twitter handle associated with a given tweet id 

## Release 5: Reflection
Crafting this assignment to use Twitter as a learning tool was helpful because of the familiarity with Twitter. This allowed me to connect dots at times I may have been confused on a lot easier than if this assignment was just given for some random site. There seem to be more fields than of the ones I mentioned. 