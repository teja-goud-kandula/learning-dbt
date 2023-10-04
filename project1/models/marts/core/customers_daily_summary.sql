select 
    {{ dbt_utils.generate_surrogate_key( [ 'CUSTOMER_ID', 'ORDER_DATE' ] ) }} as id,
    CUSTOMER_ID,
    ORDER_DATE,
    count(*) as number_of_orders
from {{ ref('stg_orders') }}
    group by 1,2,3 