-- to create a table instead of view, uncomment the line below
--{{ config(materialized='table') }}

select (_airbyte_data ->> 'matchStatus')::INT as matchStatus, (_airbyte_data ->> 'isConversationCreated')::BOOLEAN as conversationStarted from _airbyte_raw_profilematchlogs where (_airbyte_data -> 'matchStatus')::INT = 1
