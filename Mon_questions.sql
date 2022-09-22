1. How many actors are there with the last name ‘Wahlberg’? - 2 Wahlbergs


2. How many payments were made between $3.99 and $5.99?
3,280 but I think I have an updated data set

--This was my Syntax
select customer_id, amount
from payment
where amount >= 3.99 and amount <= 5.99

3. What film does the store have the most of? (search in inventory)

Zorro Ark


4. How many customers have the last name ‘William’? 0 AKA ZERO

--I got zero last_name =(like) Williams but 1 Williams and
--I got 1 first_name =(like) to William


5. What store employee (get the id) sold the most rentals?

--From this syntax it was staff ID 2 but there were only 2 sales people. His name was Jon.
select max(staff_id) as max_salesman
from rental

6. How many different district names are there? Again I think I have an updated list
When I ran:

select distinct(district)
from address

--I got 378 distinct districts
--I am not sure if it gives that information but there is 109 countries listed in the country table and
--200 address under the store_ID table

7. What film has the most actors in it? 
(use film_actor table and get film_id) 

8. From store_id 1,
So I used a few Syntaxes,
select *
from film_actor
select *
from store
select *
from film_actor
-- From these we can tell the last film_id number 993 which is called “Wrong Behavior”. The
--actor ID is 200. Which would make him/her “Temple Thora” However this still doesn’t
--answer the question. I thought this question was worded strangely but maybe I’m just
--confused. However I am not able to find the amount of actors in each movie.
8. How many customers have a last name ending with ‘es’? (use customer table) 
--21

select last_name
from customer
where last_name like '%es';

9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
with ids between 380 and 430? (use group by and having > 250)

select *
from payment
where customer_id > 380 and customer_id < 430
group by payment_id
having amount = sum(4.99) or sum(amount) = 5.99
order by customer_id desc
-- Using this syntax it gave me a total of 300 orders of both 4.99 amount and 5.99 amount,
--within the customer ID parameters of 380 and 430

10. Within the film table, how many rating categories are there? And what rating has the most
movies total?Using this syntax: we can see there are 5 categories: PG-13, NC-17, G, PG,
and R

select distinct (rating)
from film
This syntax gets us the number of each rating : PG-13 being the most with 223
SELECT rating, COUNT(*)
FROM film
GROUP BY rating;
--If I use this syntax I can get it in order though PG-13 has 223 ratings
SELECT rating, COUNT(*)
FROM film
GROUP by rating
order by 2 desc