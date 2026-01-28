{{ config(materialized = 'table') }}

SELECT 'impressions' AS stage, SUM(impressions) AS value
FROM {{ ref('stg_instagram_posts') }}

UNION ALL
SELECT 'reach', SUM(reach)
FROM {{ ref('stg_instagram_posts') }}

UNION ALL
SELECT 'likes', SUM(likes)
FROM {{ ref('stg_instagram_posts') }}

UNION ALL
SELECT 'comments', SUM(comments)
FROM {{ ref('stg_instagram_posts') }}

UNION ALL
SELECT 'shares', SUM(shares)
FROM {{ ref('stg_instagram_posts') }}

UNION ALL
SELECT 'saves', SUM(saves)
FROM {{ ref('stg_instagram_posts') }}