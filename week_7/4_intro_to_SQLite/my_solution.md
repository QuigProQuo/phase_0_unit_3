# U3.W7: Intro to SQLite

## Release 0: Create a dummy database

John:~ JPQ$ sqlite3 dummy.db
-- Loading resources from /Users/JPQ/.sqliterc

SQLite version 3.7.13 2012-07-17 17:46:21
Enter ".help" for instructions
Enter SQL statements terminated with a ";"
sqlite> CREATE TABLE users (
   ...>   id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...>   first_name VARCHAR(64) NOT NULL,
   ...>   last_name  VARCHAR(64) NOT NULL,
   ...>   email VARCHAR(128) UNIQUE NOT NULL,
   ...>   created_at DATETIME NOT NULL,
   ...>   updated_at DATETIME NOT NULL
   ...> );
sqlite> 

## Release 1: Insert Data 
INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('now'));

   sqlite> select*from users;
id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-23 16:20:37  2014-04-23 16:20:37
sqlite> 

INSERT INTO users
(first_name, last_name, email, created_at, updated_at)
VALUES
('John', 'Quigley', 'johnpeterquigley@gmail.com', DATETIME('now'), DATETIME('now'));

## Release 2: Multi-line commands

id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-23 16:20:37  2014-04-23 16:20:37
2           John        Quigley     johnpeterquigley@gmai  2014-04-23 16:23:27  2014-04-23 16:23:27
sqlite> 

## Release 3: Add a column
sqlite> .schema
CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name VARCHAR(64) NOT NULL,
  last_name  VARCHAR(64) NOT NULL,
  email VARCHAR(128) UNIQUE NOT NULL,
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL
, nickname VARCHAR(64) NULL);
sqlite> select*from users;
id          first_name  last_name   email                  created_at           updated_at           nickname  
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-23 16:20:37  2014-04-23 16:20:37  Kimchee   
2           John        Quigley     johnpeterquigley@gmai  2014-04-23 16:23:27  2014-04-23 16:23:27  Quigs     
sqlite> 

## Release 4: Change a value
sqlite> UPDATE users
   ...> SET first_name='Kimmy', nickname='Ninja Coder'
   ...> WHERE first_name='Kimmey';
sqlite> select*from users;
id          first_name  last_name   email                  created_at           updated_at           nickname   
----------  ----------  ----------  ---------------------  -------------------  -------------------  -----------
1           Kimmy       Lin         kimmy@devbootcamp.com  2014-04-23 16:20:37  2014-04-23 16:20:37  Ninja Coder
2           John        Quigley     johnpeterquigley@gmai  2014-04-23 16:23:27  2014-04-23 16:23:27  Quigs      
sqlite> 

## Release 5: Reflect
<!-- Add your reflection here -->