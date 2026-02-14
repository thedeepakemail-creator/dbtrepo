{{
    config(
        materialized='incremental',
        unique_key='empno'
    )
}}
select EMPNO,ENAME,DEPTNO,SAL,D_UPD_DATE from {{ source('s1', 's_emp') }}

{% if is_incremental() %}
    -- this filter will only be applied on an incremental run
    where d_upd_date > (select max(d_upd_date) from {{ this  }}) 
{% endif %}