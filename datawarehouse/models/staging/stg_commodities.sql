with source as (
select 
    "Date",
    "Close",
    simbolo
from 
    {{ source ("dbsales", "commodities") }}

),

renamed as (
    select 
        cast("Date" as date) as data,
        cast("Close" as int) as valor_fechamento,
        simbolo
    from source
)

select * from renamed