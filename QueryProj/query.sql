-- Display language name for each game
select game_id, game_name as 'Game name', language_name as Language
from game
join game_language using (game_id)
join language using (language_id)
order by game_id asc;

-- Display amount spent on game purchase per user
select user_name as 'User name', sum(order_amount_paid) as 'Total amount spent on games'
from orders
join users using (user_id)
group by user_id;

-- Show the user with the most achievement
select user_name as 'User name', count(achievement_id) as 'Number Of Achievement'
from user_achievement_information
join users using (user_id)
group by user_id
order by count(achievement_id) desc limit 1;

-- Users with 'Verified' badge
select user_name as 'User name with Verified badge'
from users
where badge_id = 2111;

-- Display location of each user
select user_id, user_name as 'User name', location_name as 'Location'
from users
join location using (location_id);