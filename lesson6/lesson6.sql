/* Пусть задан некоторый пользователь. 
Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим пользователем. */

SELECT `to_user_id` AS `best_friend_id`, COUNT(*) AS `number_of_messages` FROM messages WHERE `from_user_id`=1 GROUP BY `best_friend_id` LIMIT 1;

/* Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей. */

/* В процессе решения */

SELECT `user_id`, TIMESTAMPDIFF(YEAR, `birthday`, NOW()) AS `age` FROM `profiles` ORDER BY age LIMIT 10;

SELECT COUNT(*), `to_user_id` FROM `users_likes` WHERE `to_user_id` = 50 GROUP BY `to_user_id`;
