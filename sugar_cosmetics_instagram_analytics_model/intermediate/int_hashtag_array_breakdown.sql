{{ config(materialized ='table') }}

SELECT
    post_date,
    post_type,
    LOWER(
      REGEXP_REPLACE(tag, '[^a-zA-Z0-9#]', '', 'g')
    ) AS hashtag,
         likes,
         comments,
         shares,
         saves,
         reach
FROM {{ ref('stg_instagram_posts') }},
     UNNEST(string_to_array(hashtags, ' ')) AS tag
WHERE hashtags IS NOT NULL