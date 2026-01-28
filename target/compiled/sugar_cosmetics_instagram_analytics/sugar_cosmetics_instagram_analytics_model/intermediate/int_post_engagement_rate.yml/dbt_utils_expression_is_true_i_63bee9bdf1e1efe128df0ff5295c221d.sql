



select
    1
from "sugar_cosmetics_instagram_analytics"."public"."int_post_engagement_rate"

where not(post_engagement_rate post_engagement_rate >= 0 AND post_engagement_rate <= 1)

