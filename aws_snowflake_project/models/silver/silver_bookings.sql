{{config( materialized = 'incremental',unique_keys='BOOKING_ID')}} 

select
    BOOKING_ID,
    LISTING_ID,
    BOOKING_DATE,
    {{ multiply('NIGHTS_BOOKED','BOOKING_AMOUNT')}} + CLEANING_FEE + SERVICE_FEE as total_booking_amount,
    BOOKING_STATUS,
    CREATED_AT

from
    {{ ref("bronze_bookings")}}