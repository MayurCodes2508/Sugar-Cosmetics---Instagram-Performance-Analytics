# 📊 Sugar Cosmetics – Instagram Performance Analytics

This project analyses the performance of Sugar Cosmetics Instagram account using real-world social media data.  
The goal is to understand how different types of content perform and to derive insights that can help improve social media strategy.

The project follows an Analytics Engineering approach using:
- PostgreSQL as the Data Warehouse
- dbt for data modelling and testing
- Power BI for visualization and reporting

---

## 📁 Dataset

The raw dataset contains post-level Instagram data with the following columns:

- Post Date  
- Post Type (Image, Video etc)  
- Campaign Type  
- Hashtags  
- Audience Emotion  
- Engagement Source  
- Impressions  
- Reach  
- Likes  
- Comments  
- Shares  
- Saves  
- Profile Visits  
- Follows  

Each row represents one Instagram post.

---

## 🧱 Data Modeling Structure (dbt)

The data pipeline is organized into three layers as per dbt layering:

### 1. Staging Layer (`stg_`)

Purpose:
- Clean column names
- Cast correct data types

Tables:
- `stg_instagram_posts`

Tests applied:
- Not null checks on important numeric and date columns

---

### 2. Intermediate Layer (`int_`)

Purpose:
- Create reusable business logic
- Prepare features for analysis

Tables:
- `int_post_engagement_rate` → calculates engagement rate per post
- `int_hashtag_array_breakdown` → explodes multiple hashtags into separate rows

This layer is useful for:
- Feature engineering
- Reuse in multiple fact models

---

### 3. Fact Layer (`fact_`)

Purpose:
- Final business metrics used in dashboards

Tables:
- `fact_kpi_overview`
- `fact_monthly_posting_trend`
- `fact_ranking_posts_by_likes`
- `fact_post_type_performance_comparison`
- `fact_dow_analysis_by_engagement`
- `fact_engagement_funnel`
- `fact_hashtags_by_top_used`
- `fact_ranking_posts_by_post_engagement_rate`

These fact tables are directly connected to Power BI.

---

## 📊 Metrics Defined

Some key metrics used in the project:

- Total Posts
- Total Likes
- Total Comments
- Total Reach
- Average Engagement Rate per Post  
  `(likes + comments + shares + saves) / reach`

- Monthly Posting Frequency

- Top 10 Posts by Likes

- Top 10 Posts by Engagement Rate

- Performance by Post Type

- Best Day of Week to Post

- Engagement Funnel:
  - Impressions → Reach → Likes → Comments → Shares → Saves

- Hashtag Performance:
  - Post Count
  - Average Engagement Rate
  - Average Reach

---

## 🧪 Data Quality & Testing

Data quality is enforced using dbt tests such as:

- `not_null` on key metrics
- `expression_is_true` for:
  - non-negative values
  - engagement rate between 0 and 1

These tests help ensure that dashboards are built on trustworthy data.

---

## 📈 Dashboard (Power BI)

Power BI is used only for:
- Visualization
- Filtering
- Business presentation

All business logic and metrics are calculated in dbt, not in Power BI.

Dashboard pages include:
1. Overview KPIs
2. Content Performance Analysis
3. Engagement & Hashtag Analysis

Interactive slicers:
- Post Type
- Month
- Hashtag

---

## 🚀 Tools Used

- PostgreSQL
- dbt Core
- Power BI
- SQL

---
