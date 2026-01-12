{{ config(materialized = 'table') }}

SELECT week_start,
	   weekly_revenue,
	   prev_week_revenue,
	   CASE
           WHEN prev_week_revenue IS NULL
           OR prev_week_revenue = 0 THEN NULL 
           ELSE (weekly_revenue - prev_week_revenue) / prev_week_revenue
	   END AS week_over_week_growth_ratio
FROM {{ ref('int_weekly_order_revenue_lag_1w') }}