{{ config (materialized = 'incremental',unique_key='HOST_ID')}}

select
    HOST_ID,
    REPLACE(HOST_NAME,' ','_') as HOST_NAME,
    HOST_SINCE,
    IS_SUPERHOST,
    RESPONSE_RATE,
    CASE
    when RESPONSE_RATE > 95 then 'Excellent'
    when RESPONSE_RATE > 80 then 'Good'
    when RESPONSE_RATE > 60 then 'Fair'
    else 'Poor'
    END as RESPONSE_RATE_QUALITY,
    CREATED_AT
    from 
        {{ref("bronze_hosts")}}
    


