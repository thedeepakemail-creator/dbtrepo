select c_custkey,upper(c_name) as c_name, {{ new_segment("c_mktsegment") }}  c_mktsegment
from {{ source('s1', 't_customer') }} inner join {{ source('s1', 't_nation') }}
on n_nationkey=c_nationkey 
where c_nationkey=8