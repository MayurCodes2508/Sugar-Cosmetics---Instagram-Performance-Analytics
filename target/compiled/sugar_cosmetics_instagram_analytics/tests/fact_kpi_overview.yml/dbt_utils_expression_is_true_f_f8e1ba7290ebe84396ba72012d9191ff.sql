



select
    1
from "sugar_cosmetics_instagram_analytics"."public"."fact_kpi_overview"

where not(avg_engagement_rate >= 0 AND avg_engagement_rate <= 1)

