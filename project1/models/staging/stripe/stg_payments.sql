select
    id as payment_id,
    order_id,
    payment_method,
    
    -- amount is stored in cents, convert it to dollars
    amount / 100 as amount

from raw.stripe.payments