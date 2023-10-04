
-- set a variable 
{% set my_cool_string = 'wow! cool!' %}

-- accessing the set variable 
{{ my_cool_string }}

-- set values in a list 
{% set my_animals = ['lemur', 'wolf', 'panther', 'lion'] %}

-- accessing values from the list 
-- select ' {{ my_animals[0] }} ' as animal 

-- parsing over the list using a for loop
{% for animal in my_animals %}
    My favoriteee animal is the  {{ animal }}
{% endfor %}