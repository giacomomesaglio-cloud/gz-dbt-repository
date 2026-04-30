--Test per vedere se su colonna date_date ho il formato data
SELECT *
FROM {{ ref('stg_raw__sales') }}
WHERE SAFE_CAST(date_date AS date) IS NULL
