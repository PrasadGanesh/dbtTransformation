-- to create a table instead of view, uncomment the line below
--{{ config(materialized='table') }}

select 'subscribedUsers' as description, count(distinct(_airbyte_data ->> 'userId')) from _airbyte_raw_subscriptionpurchase UNION ALL select 'allUsers', count(*) from _airbyte_raw_users
