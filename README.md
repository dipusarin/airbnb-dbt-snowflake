# Airbnb Data Engineering Pipeline

## Overview

An end-to-end data engineering project built using Snowflake, dbt,
AWS S3, SQL, and Git.

The project transforms Airbnb data through a Medallion Architecture
from raw data to analytics-ready Gold models.

## Architecture

AWS S3 &rarr; Snowflake Staging &rarr; Bronze &rarr; Silver &rarr; Gold
    

## Technology Stack

- Snowflake
- dbt
- SQL
- AWS S3
- Git / GitHub
- Jinja
- Python

## Data Architecture

### Bronze Layer

The Bronze layer contains the initial transformation of data
loaded from the staging layer.

Models include:

- bronze_bookings
- bronze_hosts
- bronze_listings

### Silver Layer

The Silver layer performs data cleaning and business transformations.

Examples include:

- Data cleansing
- Column transformations
- Calculated fields
- dbt macros
- Incremental models

Models include:

- silver_bookings
- silver_hosts
- silver_listing

### Gold Layer

The Gold layer contains analytics-ready data models.

Concepts implemented include:

- Fact tables
- Dimension tables
- Star schema
- One Big Table (OBT)
- Ephemeral models
- dbt snapshots
- Slowly Changing Dimensions (SCD Type 2)

## dbt Concepts Used

- `source()`
- `ref()`
- Jinja templating
- Macros
- Filters
- Incremental models
- `is_incremental()`
- `unique_key`
- Snapshots
- Ephemeral models
- Materializations
- Metadata-driven transformations

## Incremental Processing

Incremental models are used to avoid processing the entire dataset
on every run.
