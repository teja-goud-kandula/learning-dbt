select
    id as payment_id,
    order_id,
    payment_method,
    -- amount is stored in cents, convert it to dollars
    {{ cents_to_dollars() }} as amount
from {{ source('stripe', 'payments') }}