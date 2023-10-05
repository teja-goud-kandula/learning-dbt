{#
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

{% set temperature = 70 %}

-- If statement
{% if temperature < 65 %}
    Time for a cappucino
{% else %}
    Time for a cold brew!
{% endif %}    


{% set foods = ['carrot', 'hotdog', 'cucumber', 'chicken', 'bell pepper'] %}

{% for food in foods %}
    {%- if food == 'hotdog' -%}
        {% set food_type = 'snack' %}
    {%- elif food == 'chicken' -%}
        {% set food_type = 'meat' %}
    {%- else -%}
        {% set food_type = 'vegetable' %}
    {%- endif -%}
    The humble {{ food }} is my favorite {{ food_type }}
{% endfor %}

#}

-- dictionary 
{% set websters_dict = {
    'word': 'data',
    'speech_part': 'noun',
    'definition': 'if you know you know' 
    }
%}

{{ websters_dict['word'] }} {{ websters_dict['speech_part'] }} : defined as "{{ websters_dict['definition'] }}"

{{ target.name }}
{{ target.schema }}
{{ target.role }}