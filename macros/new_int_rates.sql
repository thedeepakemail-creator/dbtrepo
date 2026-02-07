{% macro new_int_rate(c1,c2) %}
    case when {{c1}}='USA' then {{c2}} * 0.1
         when {{c1}}='INDIA' then {{c2}} * 0.2
         else  {{c2}} * 0.5 
{% endmacro %}