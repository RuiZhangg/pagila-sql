/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */

SELECT first_name, last_name, sum(amount)
FROM staff
JOIN payment USING(staff_id)
WHERE DATE(payment_date) >= '2020-01-01' AND DATE(payment_date) <= '2020-01-31'
GROUP BY staff_id
ORDER BY sum(amount);
