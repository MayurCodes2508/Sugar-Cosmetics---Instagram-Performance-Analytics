{{ config(materialized = 'table') }}

SELECT week_start,
	   weekly_revenue,
	   LAG(weekly_revenue) OVER(ORDER BY week_start) AS prev_week_revenue
FROM {{ ref('int_weekly_order_revenue') }}

	   