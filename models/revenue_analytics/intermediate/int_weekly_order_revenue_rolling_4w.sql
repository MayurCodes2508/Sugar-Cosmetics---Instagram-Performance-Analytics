{{ config(materialized = 'table') }} 
SELECT week_start, 
	   weekly_revenue, 
	   AVG(weekly_revenue) OVER(ORDER BY week_start ROWS BETWEEN 4 PRECEDING AND 1 PRECEDING) AS rolling_four_weeks_prev, 
	   STDDEV_POP(weekly_revenue) OVER(ORDER BY week_start ROWS BETWEEN 4 PRECEDING AND 1 PRECEDING) AS stddev_four_weeks_prev
FROM {{ ref('int_weekly_order_revenue') }}