{{ config(materialized = 'table') }}

SELECT customer_id,
       week,
	   is_active,
	   LAG(is_active) OVER(PARTITION BY customer_id ORDER BY week) AS prev_is_active
FROM {{ ref('int_weekly_active_customers')}}