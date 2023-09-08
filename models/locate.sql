-- to create a table instead of view, uncomment the line below
--{{ config(materialized='table') }}

select _airbyte_data -> 'userLocationDetails' -> 'country' as country, _airbyte_data -> 'userLocationDetails' -> 'city' as city from _airbyte_raw_users where _airbyte_data -> 'userLocationDetails' ? 'country'
