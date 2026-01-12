{{ config(materialized = 'table') }}

SELECT week_start,
	   weekly_revenue,
	   prev_week_revenue,
	   week_over_week_growth_ratio,
	   CASE
	       WHEN week_over_week_growth_ratio IS NULL THEN 'Insufficient Data'
           WHEN week_over_week_growth_ratio > 0 THEN 'Improving'
		   WHEN week_over_week_growth_ratio < 0 THEN 'Declining'
		   ELSE 'Stable'
	   END AS growth_ratio_flag
FROM {{ ref('int_wow_order_revenue_growth_ratio')}}