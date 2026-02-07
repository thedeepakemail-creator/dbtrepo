{% macro new_segment(column_name) %}
     case when  {{column_name}} in ('AUTOMOBILE','MACHINERY')  then 'Machine'
				   when  {{column_name}} in ('HOUSEHOLD','FURNITURE','BUILDING')  then 'House' 
				   else 'Other' end 
{% endmacro %}