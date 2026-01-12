{{ config(materialized = 'table') }}

SELECT week_start,
	   weekly_revenue,
	   rolling_four_weeks_prev,
	   stddev_four_weeks_prev,
	   CASE
           WHEN rolling_four_weeks_prev IS NULL
           OR rolling_four_weeks_prev = 0 THEN NULL
           ELSE stddev_four_weeks_prev / rolling_four_weeks_prev
	   END AS order_revenue_cv_four_weeks
FROM {{ ref('int_weekly_order_revenue_rolling_4w') }}