with products as (

    select
        sku as product_id,
        name,
        price
    from {{ source('jaffle_shop', 'products') }}

)

select * from products
