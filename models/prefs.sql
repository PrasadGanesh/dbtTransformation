-- to create a table instead of view, uncomment the line below
--{{ config(materialized='table') }}
SELECT 
    (_airbyte_data -> 'searchPreferences' ->>'distanceLowerLimit')::int AS min_distance,
    (_airbyte_data -> 'searchPreferences' ->>'distanceHigherLimit')::int AS max_distance,
    (_airbyte_data -> 'searchPreferences' ->>'ageLowerLimit')::int AS min_age,
    (_airbyte_data -> 'searchPreferences' ->>'ageHigherLimit')::int AS max_age,
    ((_airbyte_data -> 'searchPreferences' ->'whatGenderOfMatchesAreYouInterestedIn') ? 'Man')::BOOLEAN AS prefers_man,
    ((_airbyte_data -> 'searchPreferences' ->'whatGenderOfMatchesAreYouInterestedIn') ? 'Woman')::BOOLEAN AS prefers_woman,
    ((_airbyte_data -> 'searchPreferences' ->'whatGenderOfMatchesAreYouInterestedIn') ? 'Nonbinary')::BOOLEAN AS prefers_nonbinary
FROM _airbyte_raw_users
