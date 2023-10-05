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

If there are access issues when running the snowflake spend package use the ACCOUNTADMIN role to continue with the learning or grant the required priviliges. 

To test the code of a macro independently without using the macro in any other models use this command to run the code of the macro: 
```
dbt run-operation macro_name
dbt run-operation grant_select -- here grant_select is the macro name 
```

If any packages are removed from the packages.yml then the code related to those packages will still stay in the dbt_packages folder. To get rid of these delete packages run the command :
```
dbt clean
```

This will clean up the folder ```target``` and ```dbt_packages```.