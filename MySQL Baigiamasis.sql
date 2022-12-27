-- Pateikite klientų vardus ir pavardes, gyvenančius M raide prasidedančiuose miestuose. Naudokite
-- lenteles “customer”, “address”, “city”. (33 eilutės).

-- SELECT customer.first_name, customer.last_name, city.city 
-- FROM customer
-- INNER JOIN address ON address.address_id=customer.address_id
-- INNER JOIN city ON city.city_id=address.city_id
-- HAVING city.city LIKE "M%";

-- Kada paskutinį kartą ir kiek sumokėjo klientė BETTY WHITE?

-- SELECT customer.first_name, customer.last_name, payment.payment_date, payment.amount 
-- FROM customer
-- INNER JOIN payment ON payment.customer_id=customer.customer_id
-- WHERE customer.first_name="BETTY" AND customer.last_name="WHITE"
-- ORDER BY payment.payment_date DESC
-- LIMIT 1;

-- Suraskite filmų nuomos laikotarpius: paėmimo ir grąžinimo datas kliento, kurio pavardė yra LEE.
-- (rental ir customer lentelės).Užklausa (25 eilutės).

-- SELECT customer.last_name, rental.rental_date, rental.return_date 
-- FROM rental
-- INNER JOIN customer ON customer.customer_id=rental.customer_id
-- WHERE customer.last_name="LEE";

-- Kiek mažiausiai ir kiek daugiausiai už filmo nuomą yra sumokėjusi klientė Sarah Lewis? 
-- Naudokite lenteles “payment”, “customer”. Užklausa (1 eilutė).

-- SELECT customer.first_name, customer.last_name, MIN(payment.amount), MAX(payment.amount)
-- FROM customer
-- INNER JOIN payment ON payment.customer_id=customer.customer_id
-- WHERE customer.first_name="Sarah" AND customer.last_name="Lewis";

-- Kiek nuomos užsakymų įvykdė darbuotojas Mike Hillyer per 2005 metų liepos mėnesį? 
-- Užklausa (1 eilutė).

-- SELECT staff.first_name, staff.last_name, COUNT(rental.staff_id) FROM rental
-- INNER JOIN staff ON staff.staff_id=rental.staff_id
-- WHERE rental_date LIKE "2005-07%"
-- GROUP BY staff.first_name, staff.last_name
-- HAVING staff.first_name="Mike" AND staff.last_name="Hillyer"
