{%- macro cents_to_dollars() -%}
    round (amount / 100 , 2 )
{%- endmacro %}