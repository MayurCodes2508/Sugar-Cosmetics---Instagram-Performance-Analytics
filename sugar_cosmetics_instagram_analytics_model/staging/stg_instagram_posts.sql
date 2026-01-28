{{ config(materialized = 'view') }}

SELECT cast("Post Date" as date) AS post_date,
       cast("Post Type" as text) AS post_type,
	   cast("Campaign Type" as text) AS campaign_type,
	   cast("Hashtags" as text) AS hashtags,
	   cast("Audience Emotion" as text) AS audience_emotion,
	   cast("Engagement Source" as text) AS engagement_source,
	   cast("Impressions" as int) AS impressions,
	   cast("Reach" as int) AS reach,
	   cast("Likes" as int) AS likes,
	   cast("Comments" as int) AS comments,
	   cast("Shares" as int) AS shares,
	   cast("Saves" as int) AS saves,
	   cast("Profile Visits" as int) AS profile_visits,
	   cast("Follows" as int) AS follows
FROM {{ source('raw_instagram', 'posts') }}