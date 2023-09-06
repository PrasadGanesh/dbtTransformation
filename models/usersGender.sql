-- to create a table instead of view, uncomment the line below
--{{ config(materialized='table') }}

select _airbyte_data ->> 'gender' as gender, count(_airbyte_data ->> 'gender') as count from _airbyte_raw_users where _airbyte_data ? 'gender' and _airbyte_data ->> 'gender' in ('man', 'woman', 'Man', 'Woman', 'nonbinary', 'Nonbinary') group by _airbyte_data ->> 'gender'
