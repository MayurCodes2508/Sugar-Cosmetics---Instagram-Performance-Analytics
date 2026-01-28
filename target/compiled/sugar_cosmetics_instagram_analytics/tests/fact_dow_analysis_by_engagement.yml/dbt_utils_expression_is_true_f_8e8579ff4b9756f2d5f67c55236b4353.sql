



select
    1
from "sugar_cosmetics_instagram_analytics"."public"."fact_dow_analysis_by_engagement"

where not(avg_engagement >=0)

