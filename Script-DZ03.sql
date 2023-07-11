/*
Урок 3. SQL – выборка данных, сортировка, агрегатные функции
1. Написать скрипт, возвращающий список имен (только firstname) пользователей без повторений в алфавитном порядке. [ORDER BY]
2. Выведите количество мужчин старше 35 лет [COUNT].
3. Сколько заявок в друзья в каждом статусе? (таблица friend_requests) [GROUP BY]
*4. Выведите номер пользователя, который отправил больше всех заявок в друзья (таблица friend_requests) [LIMIT].
*5. Выведите названия и номера групп, имена которых состоят из 5 символов [LIKE].
*/

USE vk;

-- 1. Написать скрипт, возвращающий список имен (только firstname) пользователей без повторений в алфавитном порядке.
SELECT DISTINCT firstname FROM users;

-- 2. Выведите количество мужчин старше 35 лет.
SELECT count(*) FROM profiles 
WHERE gender = 'm' AND TIMESTAMPDIFF(YEAR, birthday, NOW()) > 35 ;

-- 3. Сколько заявок в друзья в каждом статусе? (таблица friend_requests) 
SELECT status, count(*) 
FROM friend_requests
GROUP BY status;

-- *4. Выведите номер пользователя, который отправил больше всех заявок в друзья (таблица friend_requests).
SELECT initiator_user_id, count(*) FROM friend_requests
GROUP BY initiator_user_id
LIMIT 1;

-- *5. Выведите названия и номера групп, имена которых состоят из 5 символов.
SELECT id, name FROM communities 
WHERE name LIKE '_____';


