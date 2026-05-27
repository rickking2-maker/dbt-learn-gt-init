with 

source as (

    select * from {{ source('Jaffle_shop', 'orders') }}

),

renamed as (

    select
        id,
        user_id,
        order_date,
        status,
        _etl_loaded_at

    from source

)

select * from renamed