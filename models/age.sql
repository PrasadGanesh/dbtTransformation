-- to create a table instead of view, uncomment the line below
--{{ config(materialized='table') }}

select age_table.age, count(age_table.age) from (SELECT EXTRACT(YEAR FROM age(current_date, (_airbyte_data ->> 'dateOfBirth')::DATE))::INT AS age from _airbyte_raw_users where _airbyte_data ->> 'dateOfBirth' != 'Invalid date') as age_table where age_table.age > 17 and age_table.age < 101 group by age_table.age
