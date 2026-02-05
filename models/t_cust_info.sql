select c_custkey,upper(c_name) as c_name, n_name,
              case when  c_mktsegment in ('AUTOMOBILE','MACHINERY')  then 'Machine'
				   when  c_mktsegment in ('HOUSEHOLD','FURNITURE','BUILDING')  then 'House' 
				   else 'Other' end c_mktsegment
from {{ source('s1', 't_customer') }} inner join {{ source('s1', 't_nation') }}
on n_nationkey=c_nationkey 
where c_nationkey=8