#Nhi Dang#

#1. Write a query to get the number of movies produced in the United States and added to Netflix after 2014.  
SELECT  count(*)
FROM NewQuiz.netflix_titles
WHERE country = "United States" and year_added > 2014;

#2. Write a query to get titles of TV shows added to Netflix in 2020 but were not released in 2020. Sort the result table in ascending order.
SELECT  title,year_added, release_year
FROM NewQuiz.netflix_titles 
WHERE year_added = 2020 and release_year != 2020
order by release_year asc;

#3. Write a query to get all the information of the movies produced in South Korea and added before 2018. Sort your result table by the title of the movies in descending order.
SELECT  *
FROM NewQuiz.netflix_titles 
WHERE country = "South Korea" and year_added < 2018
order by title desc;

#4. Write a query to get the number of unique categories of movies that were released in 2014.
SELECT count(distinct category)
FROM NewQuiz.netflix_titles 
WHERE release_year = 2014; 

#5. Write a query to get the number of R-rated TV shows that were added to Netflix in 2016.
SELECT rating, count(*)
FROM NewQuiz.netflix_titles 
WHERE rating = "R" and year_added = 2016; 

#6. Write a query to get the answer to the following question: “How many unique categories of movies are released in 2020?”
SELECT count(distinct category)
FROM NewQuiz.netflix_titles 
WHERE release_year = 2020; 

#7. Write a query to get the number of different ratings of TV shows produced in the United States.
SELECT count(distinct rating)
FROM NewQuiz.netflix_titles 
WHERE country = "United States"; 

#8. Write a query to find a “Stand-Up Comedy” movie or TV show title added to Netflix before 2018 and produced in Chile.
SELECT *
FROM NewQuiz.netflix_titles 
WHERE category = "Stand-Up Comedy" and year_added < 2018 and country = "Chile"; 

#9. Write a query to get the number of movies or TV shows that are added to Netflix in 2019, directed by "Steven Spielberg" or "Martin Scorsese," and not rated as "R"
SELECT count(*)
FROM NewQuiz.netflix_titles 
WHERE rating != "R" and year_added = 2019 and director = "Steven Spielberg" or director = "Martin Scorsese"; 

#10. Write a query to get the number of "Action & Adventure" movies or TV shows that are added in 2019 or 2020 but are released before 2000.
SELECT count(*)
FROM NewQuiz.netflix_titles 
WHERE category = "Action & Adventure" and year_added = 2019 or year_added = 2020 and release_year< 2000; 































