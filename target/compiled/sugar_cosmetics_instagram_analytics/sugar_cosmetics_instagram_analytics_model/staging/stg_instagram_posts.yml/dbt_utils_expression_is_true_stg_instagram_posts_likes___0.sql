



select
    1
from "sugar_cosmetics_instagram_analytics"."public"."stg_instagram_posts"

where not(likes >= 0)

