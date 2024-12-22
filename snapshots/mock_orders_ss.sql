{% snapshot mock_orders_ss %}

{{config(

    unique_key = 'ORDER_ID',
    strategy = 'timestamp',
    updated_at = 'updated_at'

)}}

SELECT * FROM {{source('DBTD','MOCKS')}}

{% endsnapshot %}