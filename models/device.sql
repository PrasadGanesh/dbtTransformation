-- to create a table instead of view, uncomment the line below
--{{ config(materialized='table') }}
select _airbyte_data -> 'deviceDetail' ->> 'deviceTypeText' from _airbyte_raw_users
