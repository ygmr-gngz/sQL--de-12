1. Film Uzunluğu ortalama Film Uzunluğundan Fazla Olan Kaç Film Var?

SELECT COUNT(*) AS film_count
FROM film
WHERE length > (SELECT AVG(length) FROM film);

2. **En YüksekEn Yüksek rental_rateDeğerine Sahip Kaç Film Var?

SELECT COUNT(*) AS highest_rental_rate_count
FROM film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);

3. **En DüşükEn Düşük rental_rateve En Düşük replacement_costDeğerine Sahip Filmleri Siralayin

SELECT * FROM film
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film)
AND replacement_cost = (SELECT MIN(replacement_cost) FROM film);


4. **En Fazla Sayida Alişveriş Yapan Müşterileri (En Fazla Sayida Alişveriş Yapan Müşterileri ( customer) Siralayin

SELECT customer_id, COUNT(*) AS total_payments
FROM payment
GROUP BY customer_id
ORDER BY total_payments DESC;