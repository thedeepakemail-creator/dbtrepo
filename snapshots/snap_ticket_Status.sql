{% snapshot snap_ticket_status %}
    {{
        config(
            target_schema='test_Schema',
            target_database='test_db',
            unique_key='id',
            strategy='check',
            check_cols=['status']
        )
    }}

    select * from {{ ref('m_t_ticket') }}
 {% endsnapshot %}