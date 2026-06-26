with customers as (
    select * from {{ref('stg_jaffle_shop__customers')}}
),

orders as (
    select * from {{ref('stg_jaffle_shop__orders')}}
),
payments as (
    select * from {{ref('stg_stripe_payments')}}
),
final as (
    select
        orders.order_id,
        orders.customer_id,
        payments.amount

    from orders

    left join payments using (order_id)

)
select * from final
