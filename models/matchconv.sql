-- to create a table instead of view, uncomment the line below
--{{ config(materialized='table') }}

select _airbyte_data ->> 'matchStatus' as matchStatus, _airbyte_data ->> 'isConversationCreated' from _airbyte_raw_profilematchlogs where _airbyte_data -> 'matchStatus' = 1
