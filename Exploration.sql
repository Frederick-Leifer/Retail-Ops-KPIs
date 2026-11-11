select
    name as product_name, category_id, price, 
    round((select avg(p2.price) from products p2 where p1.category_id = p2.category_id and p2.is_active),2) as category_avg_price
    from products p1
    where price > (select avg(p2.price) from products p2 where p1.category_id = p2.category_id and p2.is_active)
    and is_active
    order by price desc;