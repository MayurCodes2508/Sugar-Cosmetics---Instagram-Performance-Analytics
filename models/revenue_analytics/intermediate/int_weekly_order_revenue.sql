{{ config(materialized = 'table') }}

SELECT week_start,
	   SUM(cleaned_amount) AS weekly_revenue
FROM {{ ref('staging_orders') }}
GROUP BY week_start