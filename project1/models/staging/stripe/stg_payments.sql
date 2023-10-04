select
    id as payment_id,
    order_id,
    payment_method,
    
    -- amount is stored in cents, convert it to dollars
    round (amount / 100 , 2 ) as amount

from {{ source('stripe', 'payments') }}