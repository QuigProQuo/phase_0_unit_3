[Week 7 Home](../)

# U3.W7: Technical Blog

## Learning Competencies
- Explain SQL injection and identify ways to prevent it
- Compare benefits of SQL vs NoSQL databases
- Discuss database query optimization


## Release 0: Copy Your Blog Template
Copy your blog tempate into a new HTML file named `week7_technical.html`. 

## Release 1: Research
Select a topic below to research. 

- Look up issues with SQL (specifically SQL Injection) Enjoy this [XKCD comic](http://xkcd.com/327/) for an amusing intro. What is it? Why is it a problem? What can newb programmers do to combat this issue?

- Compare SQL databases with NoSQL databases. What are the pros and cons of either? Which are you most excited to work with and why?

- Imagine having a huge database with millions of entries. It would probably take a lot of time to run advanced queries on such a large dataset. What are some of the things you can do to optimize SQL queries?

## Release 2: Blog!
Write a blog post about what you learned. Teach your audience and future employer!

## Release 3: Submission
Link to your blog on the index of your github.io site and sync your changes. 

Share your blog on the google+ community under "Blog Posts!" Read others blogs. What did you like about them? 

Post a comment on their community post to start a discussion or give some feedback.  Consider sharing your blog post on Reddit as well.



SQL injection
	SQL injection is a code injection technique used to attak data driven applications. The hacker will insert false SQL statements into any of the entry fields. In order for there to be an injection the hacker must exploit a security vulnerability such as when a user input is either incorrectly filtered for string literal escape characters embedded in SQL statements or user input it not strongly typed and unexpectedly executed. One example of an SQL injection that I found on wikipedia was the use of incorrect type handling. This scenario occurs when the database is looking to reference a number that is actually stored as a string. If the end user or in our case the hacker was to input a statement such as "1;DROP TABLE users" into a field such as a users ID it would cause the actual SQL statement to look like: "Select * FROM userinfo WHERE id=1;DROP TABLE users;" This use of SQL statements to manipulate one's database obviously goes beyond the intention of it's creator. Being able to protect your SQL database from such attacks has become a must for any programmer looking to keep their job.

	Newb programmers, such as myself, should take the time to learn how to protect against an SQL injection. One site which was helpful in my learning process was http://www.esecurityplanet.com/hackers/how-to-prevent-sql-injection-attacks.html . They preach about 4 different ways to defen against SQL injection attacks. Such as comprehensive data sanitization (a filter for ALL user input, specific to what you are looking to aquire from the user), web application firewall (such as the open source module ModSecurity), limitting dabase privileges by context, and avoiding the construction of an SQL querie with user input.

	Another great resource in learning more about SQL injection attacks is: http://www.veracode.com/security/sql-injection


SQL v NoSQL
	
	SQL is a relational database, NoSQL is a non-relational or desitributed database
	SQL is a table based database, NoSQL is a document based, key value pairs, graph database or wide-column sotres
	SQL has predefined schema's, NoSQL has dynamic schema for unstructured data
	SQL is vertically scalable, NoSQL is horizontally scalable

	For hierarchical data... SQL are not the best fit, NoSQL are highly preferred for large data set.

	For scalability.. SQL uses increased CPU, RAM, SSD, etc. to scale, NoSQL uses additional servers easily in your NoSQL database infrastructure to handle the large traffic.

	For high transactional based applications... SQL is more stable and promises the atomicity as well as integrity of the data, NoSQL is not stable enough in high load and for complex transactional applications.

	For more SQL v NoSQl analysis I recommend viewing this site: http://www.thegeekstuff.com/2014/01/sql-vs-nosql-db/



Database Query Optimization
	Database query optimization can be accomplished in many different ways. Two great websites that assisted in my learning of how to optimize an SQL database came from (1) http://hungred.com/useful-information/ways-optimize-sql-queries/ and (2) http://hungred.com/useful-information/ways-destroy-sql-database/

	Database query optimization techniques consist of such practices as (1) indexing your column's appropriately, (2) provided the column is indexed you can further optimize the query using symbol operators, (3) using wildcard postfix rather than pre or full, (4) avoiding the use of the NOT operator, (5) using the most efficient (smallest) data type possible, and etc... 

