with math as (SELECT
    p.id as id, p.name as product_name, p.category_id as category_id, i.qty_on_hand as qty_on_hand, p.cost as unit_cost, (i.qty_on_hand*p.cost) as inventory_value
    from products as p
    inner join inventory as i
    on p.id = i.product_id
    where p.is_active = 'true'
    And i.qty_on_hand > 0
    )
SELECT
    product_name, category_id, qty_on_hand, unit_cost, inventory_value, (select round(avg(inventory_value),2) from math) as avg_inventory_value
    from math
    where inventory_value > (select avg(inventory_value) from math)
    order by inventory_value desc
