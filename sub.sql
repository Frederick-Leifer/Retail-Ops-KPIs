select
    c.name as name, c.segment as segment, o.id as order_id, o.order_date as order_date, o.total_amount as order_value
    from Customers as c 
    inner join orders as o 
    on c.id = o.customer_id
    where o.status = 'completed'
    and o.total_amount > (select avg(total_amount) from orders where status = 'completed')
    order by order_value desc
    limit 10