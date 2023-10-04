# learning-dbt

To build the required sources run the command:
```
dbt seed
```

This will create the data in the working schema. 
Rename the tables like this: 
```SQL
customers -> RAW.JAFFLE_SHOP.CUSTOMERS
orders -> RAW.JAFFLE_SHOP.ORDERS
payments -> RAW.STRIPE.PAYMENTS
```

When doing the dbt run command exclude the JinjaTemplate model. Hence use this query:
```
dbt run --exclude JinjaTemplate.sql
```
