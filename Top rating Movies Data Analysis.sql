Create database Movies;
USE Movies;
Select * from top_rated_movies;

#count of all movies
select count(id) from top_rated_movies;
#min, max, avg of vote_count of movies
select max(vote_count) from top_rated_movies;
select min(vote_count) from top_rated_movies;
select avg(vote_count) from top_rated_movies;

##min, max, avg of pouplarity of movies
select max(popularity) from top_rated_movies;
select min(popularity) from top_rated_movies;
select avg(popularity) from top_rated_movies;

#List of movies are vote_count less than 500
select * from top_rated_movies where vote_count>500;

select * from top_rated_movies;
select * from top_rated_movies where vote_count=443;
select * from top_rated_movies where popularity=42;
select * from top_rated_movies where id=144;

#Which is top 10 movies according to vote_average
select title, vote_average
from top_rated_movies
order by vote_average desc
limit 10;

#list of movies where rating are more than 8.5
select * from top_rated_movies where vote_average>8.5;

#How many movies are there in dataset
select count(*) as total_movies from top_rated_movies;

#which movies has most popularity 
select title, popularity
from top_rated_movies
order by popularity desc
limit 1;

#which movies has most vote_count
select title, vote_count
from top_rated_movies
order by vote_count desc
limit 1;

select * from top_rated_movies;

#list of movies are relised after 2000
select title, release_date
from top_rated_movies
WHERE str_to_date(release_date, '%d-%m-%y') >=2000-1-1;

#list of movies are relised in before 1995
select title, release_date
from top_rated_movies
WHERE str_to_date(release_date, '%d-%m-%y') >=1995-1-1;

#movies are less popularity than 10
select title, popularity
from top_rated_movies
WHERE popularity <10;

#How many movies relesed in each year
SELECT 
YEAR(STR_TO_DATE(release_date, '%d-%m-%Y')) AS release_year,
COUNT(*) AS movie_count
FROM top_rated_movies
GROUP BY release_year
ORDER BY release_year;


#movies are with high rating but low_count
select title, vote_average, vote_count
from top_rated_movies
WHERE vote_average > 8.5 and vote_count < 5000;

#Show movies with high popularity and high ratings.
select title, vote_average, popularity
from top_rated_movies
order by vote_average desc, popularity desc
limit 5;








