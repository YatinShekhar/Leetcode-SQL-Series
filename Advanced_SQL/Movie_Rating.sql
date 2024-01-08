-- https://leetcode.com/problems/movie-rating/

(select u.name as results
from MovieRating mr inner join Users u using(user_id)
group by 1
order by count(*) desc , u.name limit 1)
union all
(select title 
from movierating mr inner join movies m using(movie_id)
where year(created_at) = 2020 and month(created_at) = 2
group by 1
order by avg(rating) desc , title limit 1)