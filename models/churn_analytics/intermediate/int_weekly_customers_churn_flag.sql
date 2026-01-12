{{ config(materialized = 'table') }}

SELECT customer_id,
       week,
	   prev_is_active,
	   is_active,
	   CASE
	       WHEN prev_is_active = 1
		   AND COALESCE(is_active, 0) = 0
		   THEN 1
		   ELSE 0
	   END AS churned_flag
FROM {{ ref('int_weekly_active_customers_lag') }}