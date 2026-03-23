# Tasty Bytes dbt Project

## Overview
This dbt project transforms raw data into analytics-ready tables using Snowflake.

## Models

### Staging Models
- stg_customers: Cleans and prepares customer data
- stg_orders: Cleans and prepares order data

### Intermediate Model
- int_sales: Joins customers and orders

### Final Model
- fct_revenue: Aggregates total revenue by customer

## How It Works
- Models are built using SQL SELECT statements
- dbt uses ref() to create dependencies between models
- These dependencies form a DAG (Directed Acyclic Graph)

## Workflow
1. Models are stored in GitHub
2. Snowflake connects to GitHub
3. dbt runs models in the correct order
4. Results are materialized as tables or views in Snowflake
