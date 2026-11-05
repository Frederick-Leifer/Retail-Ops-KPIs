-- Monthly revenue and order count
select
 to_char(order_date, 'YYYY-MM') as month, count(*) as order_count, sum(total_amount) as total_revenue, round(avg(total_amount),2) as avg_order_value
 from orders
 where status = 'completed'
 group by month
 order by month asc;

 -- Revenue by customer segment
 select 
    c.segment as segment, count(c.id) as customer_count, count(o.id) as order_count, sum(o.total_amount) as total_revenue, round(avg(o.total_amount),2) as revenue_per_customer
    from customers as c 
    join orders as o
    on c.id = o.customer_id
    where o.status = 'completed'
    group by segment
    order by total_revenue desc;

-- Channel Performance

select
   channel, count(*) as orders, sum(total_amount) as revenue, round(avg(total_amount),2) as avg_order_value, round(sum(total_amount)/(select sum(total_amount)from orders where status = 'completed'),2)*100 as pct_of_total
   from orders
   where status = 'completed'
   group by channel
   order by pct_of_total Desc;