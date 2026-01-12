{{ config(materialized = 'table') }}

SELECT customer_id,
       week_start AS week,
	   1 AS is_active
FROM {{ ref('staging_orders') }}
GROUP BY customer_id,
         week