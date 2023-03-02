# Welcome to Jaffle Shop 🥪

```orders_per_day
select
    date_trunc('day', ordered_at) as date,
    count(*) as orders

from ${orders}

group by 1
order by 1
```

## Orders per day

<LineChart
    data={orders_per_day}
    x=date
    y=orders
    yAxistTitle="orders_per_day"
/>

```revenue_per_city
select
    location_name as city,
    sum(order_total) as revenue

from ${orders}

group by 1
```

## Reports on individual stores

{#each revenue_per_city as revenue}

[{revenue.city}](/{revenue.city})

{/each}

## Customer cohorts

```customers_with_cohort
select
    *,
    date_trunc('month', first_ordered_at) as cohort_month,
    lifetime_spend_pretax / count_lifetime_orders as average_order_value

from ${customers}
```

```cohorts_aov
select
    cohort_month,
    avg(average_order_value) as cohort_aov

from ${customers_with_cohort}

group by 1
order by cohort_month
```

## Customer AOV by first month cohort

We truncate our `first_order_date` to month to create a cohort, then plot their average order value per cohort.

<BarChart
    data={cohorts_aov}
    x=cohort_month
    y=cohort_aov
    yAxisTitle="average order value"
/>

```customers
select * from analytics.customers
```

```orders
select * from analytics.orders
```
