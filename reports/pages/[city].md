# Welcome to Jaffle Shop 🥪

Here is the order summary for {$page.params.city}.

```orders_per_day
select
    location_name as city,
    date_trunc('day', ordered_at) as date,
    count(*) as orders

from analytics.orders

group by 1, 2
order by 1, 2
```

## Orders per day in {$page.params.city}

<LineChart
data={orders_per_day.filter(data => data.city === $page.params.city)}
    x=date
    y=orders
    yAxistTitle="orders_per_day in {$page.params.city}"
/>
