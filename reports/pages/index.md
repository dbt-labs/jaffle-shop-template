# Welcome to Jaffle Shop 🥪

```customers
select * from 'sources/customers.csv'
```

```orders
select * from 'sources/orders.csv'
```

```customers_by_first_order
select
    date_trunc('day', first_ordered_at) as date,
    count(*) as new_customers

from ${customers}

group by 1

order by 1
```

```orders_per_day
select
    date_trunc('day', ordered_at) as date,
    count(*) as orders

from ${orders}

group by 1
order by 1
```

<LineChart
    data={orders_per_day}
    x=date
    y=orders
    yAxistTitle="orders_per_day"
/>

```customer_cohorts
select
    date_trunc('month', first_ordered_at) as cohort_month,
    *

from ${customers}
```

```cohorts_ltv
select
    cohort_month,
    avg(lifetime_spend) as ltv

from ${customer_cohorts}

group by 1
order by cohort_month
```

## Customer LTV by first month cohort

We truncate our `first_order_date` to month to create a cohort, then plot their average LTV per cohort.

<BarChart
    data={cohorts_ltv}
    x=cohort_month
    y=ltv
    yAxisTitle="average LTV"
/>
