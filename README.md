# ecommerce-orders-analytics

End-to-end DBT analytics project demonstrating layered modeling (raw, staging, intermediate and marts), data quality testing, and business metric validation.

---

## Project Overview

This project answers how weekly revenue is trending, how stable it is over time, and whether growth patterns are consistent or volatile.

This project models E-commerce order data using dbt, following a
staging → intermediate → marts architecture. The focus is on building
trustworthy metrics and enforcing correctness through comprehensive testing.

---

## Models

Total models: **9**

### Staging (1)
- `staging_orders`

### Intermediate (6)
- `weekly_order_revenue`
- `weekly_order_revenue_lag_1w`
- `weekly_order_revenue_lag_4w`
- `weekly_order_revenue_rolling_4w`
- `wow_order_revenue_percentage_growth`
- `wow_order_revenue_cv_4w`

### Marts (2)
- `fact_order_weekly_growth`
- `fact_order_revenue_consistency`

---

## Tests

Total tests: **~60**

### Schema & Integrity Tests
- not_null
- unique
- accepted_values
- non negative numeric checks

### Mathematical Correctness Tests
- formula correctness tests using `IS DISTINCT FROM`
- zero denominator handling for ratio metrics

### Business Logic Tests
- flag correctness tests for:
  - WOW(week_over_week) growth classification
  - revenue consistency classification

---

## Modeling & Testing Philosophy

### Models
- **Staging models** Clean and standardize raw data.
- **Intermediate models** Derive reusable metrics and calculations.
- **Mart models** Showcase business ready facts and flags for analysis.

### Tests
- dbt testing's outcome is as follows: test pass: no rows are returned, test fail: bad rows are returned
- We intentionally try to fail the test,
  Why? because failing test returns bad rows which allows us to fix the errors.
- We sometimes write conditions intentionally which are anti-queries to return bad rows.

---

## Documentation
- dbt docs are generated to visualize lineage and model dependencies.
- Column-level tests and descriptions are visible in the docs UI.

---
