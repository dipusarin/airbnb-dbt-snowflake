{{config( materialized = 'incremental',unique_keys='BOOKING_ID')}} 

select
    BOOKING_ID,
    LISTING_ID,
    BOOKING_DATE,
    {{ multiply('NIGHTS_BOOKED','BOOKING_AMOUNT')}}  as total_booking_amount,
    SERVICE_FEE,
    CLEANING_FEE,
    BOOKING_STATUS,
    CREATED_AT

from
    {{ ref("bronze_bookings")}}