



select
    1
from "sugar_cosmetics_instagram_analytics"."public"."stg_instagram_posts"

where not(profile_visits >= 0)

