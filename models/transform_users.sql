{{ config(materialized='table') }}
SELECT _airbyte_data ->> 'sessionStart' FROM {{ source('public', '_airbyte_raw_sessionlogs') }}
