{% set configs= [
    {
        "table":"AIRBNB.BRONZE.BRONZE_BOOKINGS",
        "columns":"*",
        "alias":"bronze_bookings",
    },
    {
        "table":"AIRBNB.BRONZE.BRONZE_LISTINGS",
        "columns":"*",
        "alias":"bronze_listings",
        "join_conditon": "bronze_bookings.listing_id = bronze_listings.listing_id"
    },
    {
        "table":"AIRBNB.BRONZE.BRONZE_HOSTS",
        "columns":"*",
        "alias":"bronze_hosts",
        "join_conditon": "bronze_listings.host_id = bronze_hosts.host_id"
    }
 ]%}