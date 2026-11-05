-- seed.sql: Sample data for retail operations

-- Categories
INSERT INTO categories (name, department) VALUES
('Laptops', 'Electronics'), ('Phones', 'Electronics'), ('Tablets', 'Electronics'),
('Headphones', 'Accessories'), ('Cases', 'Accessories'), ('Chargers', 'Accessories'),
('Desks', 'Furniture'), ('Chairs', 'Furniture'), ('Monitors', 'Electronics'),
('Software', 'Digital');

-- Products (30 items)
INSERT INTO products (name, category_id, price, cost) VALUES
('MacBook Pro 14"', 1, 1999.00, 1400.00),
('MacBook Air M3', 1, 1299.00, 900.00),
('ThinkPad X1 Carbon', 1, 1549.00, 1050.00),
('iPhone 15 Pro', 2, 1199.00, 750.00),
('Samsung Galaxy S24', 2, 899.00, 550.00),
('Google Pixel 8', 2, 699.00, 420.00),
('iPad Pro 12.9"', 3, 1099.00, 700.00),
('iPad Air', 3, 599.00, 380.00),
('AirPods Pro', 4, 249.00, 120.00),
('Sony WH-1000XM5', 4, 349.00, 180.00),
('Bose QC Ultra', 4, 429.00, 220.00),
('iPhone Case Premium', 5, 49.00, 12.00),
('Laptop Sleeve', 5, 39.00, 10.00),
('USB-C Charger 65W', 6, 59.00, 20.00),
('MagSafe Charger', 6, 39.00, 15.00),
('Standing Desk Pro', 7, 699.00, 350.00),
('Ergonomic Desk', 7, 499.00, 250.00),
('Herman Miller Aeron', 8, 1395.00, 800.00),
('Ergonomic Chair Basic', 8, 299.00, 150.00),
('LG 4K Monitor 27"', 9, 449.00, 280.00),
('Dell UltraSharp 32"', 9, 699.00, 420.00),
('Microsoft 365 Annual', 10, 99.00, 20.00),
('Adobe Creative Cloud', 10, 599.00, 100.00),
('Notion Pro Annual', 10, 96.00, 15.00),
('Galaxy Tab S9', 3, 849.00, 500.00),
('Keyboard MX Keys', 4, 119.00, 55.00),
('Mouse MX Master', 4, 99.00, 45.00),
('Webcam 4K', 9, 199.00, 90.00),
('Docking Station', 6, 249.00, 120.00),
('Monitor Arm', 7, 129.00, 50.00);

-- Customers (40 customers)
INSERT INTO customers (name, email, segment, region, country, loyalty_tier, signup_date) VALUES
('Acme Corp', 'buyer@acme.com', 'enterprise', 'North America', 'USA', 'gold', '2022-03-15'),
('TechStart SAS', 'admin@techstart.fr', 'smb', 'Europe', 'France', 'silver', '2022-06-20'),
('Global Solutions Ltd', 'procurement@globalsol.uk', 'enterprise', 'Europe', 'UK', 'platinum', '2021-11-01'),
('DataDriven GmbH', 'orders@datadriven.de', 'mid-market', 'Europe', 'Germany', 'gold', '2023-01-10'),
('CloudFirst Inc', 'it@cloudfirst.com', 'mid-market', 'North America', 'USA', 'silver', '2023-04-22'),
('Marie Dupont', 'marie.d@email.fr', 'consumer', 'Europe', 'France', 'bronze', '2023-07-01'),
('John Smith', 'j.smith@email.com', 'consumer', 'North America', 'USA', 'bronze', '2023-08-15'),
('EuroTech AG', 'kauf@eurotech.de', 'enterprise', 'Europe', 'Germany', 'platinum', '2021-05-30'),
('StartupHub', 'ops@startuphub.io', 'smb', 'North America', 'Canada', 'bronze', '2023-09-01'),
('Retail Plus', 'orders@retailplus.com', 'mid-market', 'North America', 'USA', 'gold', '2022-01-15'),
('Sophie Martin', 'sophie.m@email.fr', 'consumer', 'Europe', 'France', 'silver', '2022-12-01'),
('Nordic Systems', 'info@nordicsys.se', 'mid-market', 'Europe', 'Sweden', 'silver', '2023-02-14'),
('Pacific Trade Co', 'buy@pacifictrade.au', 'enterprise', 'Asia-Pacific', 'Australia', 'gold', '2022-08-20'),
('Innovation Labs', 'team@innolabs.com', 'smb', 'North America', 'USA', 'bronze', '2023-10-05'),
('Carlos Rodriguez', 'carlos.r@email.es', 'consumer', 'Europe', 'Spain', 'bronze', '2023-11-01'),
('MegaCorp Japan', 'orders@megacorp.jp', 'enterprise', 'Asia-Pacific', 'Japan', 'platinum', '2021-03-01'),
('Digital Agency Paris', 'contact@digitalagency.fr', 'smb', 'Europe', 'France', 'silver', '2023-05-15'),
('UK Retail Group', 'procurement@ukretail.co.uk', 'enterprise', 'Europe', 'UK', 'gold', '2022-04-10'),
('Anna Müller', 'anna.m@email.de', 'consumer', 'Europe', 'Germany', 'bronze', '2024-01-15'),
('BrightFuture Inc', 'admin@brightfuture.com', 'mid-market', 'North America', 'USA', 'silver', '2023-06-01'),
('Tokyo Tech', 'orders@tokyotech.jp', 'mid-market', 'Asia-Pacific', 'Japan', 'gold', '2022-09-10'),
('Sarah Johnson', 'sarah.j@email.com', 'consumer', 'North America', 'USA', 'silver', '2022-11-20'),
('Barcelona Digital', 'hola@bcndigital.es', 'smb', 'Europe', 'Spain', 'bronze', '2023-12-01'),
('Sydney Solutions', 'contact@sydneysol.au', 'mid-market', 'Asia-Pacific', 'Australia', 'silver', '2023-03-25'),
('Pierre Leclerc', 'pierre.l@email.fr', 'consumer', 'Europe', 'France', 'gold', '2022-05-10'),
('Hamburg Industries', 'einkauf@hamburg-ind.de', 'enterprise', 'Europe', 'Germany', 'gold', '2022-02-28'),
('Ottawa Tech Group', 'buy@ottawatech.ca', 'mid-market', 'North America', 'Canada', 'silver', '2023-07-20'),
('Lisa Chen', 'lisa.c@email.com', 'consumer', 'Asia-Pacific', 'Australia', 'bronze', '2024-02-01'),
('Milano Design', 'ordini@milanodesign.it', 'smb', 'Europe', 'Italy', 'bronze', '2023-08-10'),
('DevOps Central', 'team@devopscentral.com', 'smb', 'North America', 'USA', 'silver', '2023-04-01'),
('Amsterdam Analytics', 'info@ams-analytics.nl', 'mid-market', 'Europe', 'Netherlands', 'gold', '2022-10-15'),
('James Wilson', 'james.w@email.co.uk', 'consumer', 'Europe', 'UK', 'bronze', '2024-01-01'),
('Quantum Computing Ltd', 'ops@quantumcomp.uk', 'enterprise', 'Europe', 'UK', 'platinum', '2021-09-15'),
('Berlin Startups', 'hello@berlinstartups.de', 'smb', 'Europe', 'Germany', 'bronze', '2023-11-15'),
('Maria Garcia', 'maria.g@email.es', 'consumer', 'Europe', 'Spain', 'bronze', '2024-03-01'),
('Vancouver Digital', 'team@vandigital.ca', 'smb', 'North America', 'Canada', 'bronze', '2024-01-20'),
('Osaka Electronics', 'orders@osakaelec.jp', 'mid-market', 'Asia-Pacific', 'Japan', 'silver', '2023-01-30'),
('Emma Brown', 'emma.b@email.com', 'consumer', 'North America', 'USA', 'bronze', '2024-02-15'),
('Zurich Finance AG', 'admin@zurichfin.ch', 'enterprise', 'Europe', 'Switzerland', 'gold', '2022-07-01'),
('Lucas Martin', 'lucas.m@email.fr', 'consumer', 'Europe', 'France', 'bronze', '2024-03-10');

-- Orders (generate 200+ orders spanning 2023-2024)
-- This is a simplified version - you'd use a script for more
DO $$
DECLARE
    i INTEGER;
    cust_id INTEGER;
    ord_date DATE;
    ord_status VARCHAR(20);
    ord_channel VARCHAR(30);
    ord_amount NUMERIC(10,2);
    statuses VARCHAR(20)[] := ARRAY['completed', 'completed', 'completed', 'completed', 'shipped', 'pending', 'cancelled', 'refunded'];
    channels VARCHAR(30)[] := ARRAY['web', 'web', 'web', 'mobile', 'mobile', 'store', 'phone'];
BEGIN
    FOR i IN 1..200 LOOP
        cust_id := (random() * 39 + 1)::INTEGER;
        ord_date := '2023-01-01'::DATE + (random() * 500)::INTEGER;
        ord_status := statuses[1 + (random() * 7)::INTEGER];
        ord_channel := channels[1 + (random() * 6)::INTEGER];
        ord_amount := (random() * 3000 + 50)::NUMERIC(10,2);
        
        INSERT INTO orders (customer_id, order_date, status, total_amount, channel)
        VALUES (cust_id, ord_date, ord_status, ord_amount, ord_channel);
    END LOOP;
END $$;

-- Support tickets (50 tickets)
DO $$
DECLARE
    i INTEGER;
    cust_id INTEGER;
    ticket_cat VARCHAR(50);
    ticket_priority VARCHAR(10);
    created TIMESTAMP;
    resolved TIMESTAMP;
    categories VARCHAR(50)[] := ARRAY['billing', 'delivery', 'product_issue', 'returns', 'technical', 'account'];
    priorities VARCHAR(10)[] := ARRAY['low', 'low', 'medium', 'medium', 'medium', 'high', 'critical'];
BEGIN
    FOR i IN 1..50 LOOP
        cust_id := (random() * 39 + 1)::INTEGER;
        ticket_cat := categories[1 + (random() * 5)::INTEGER];
        ticket_priority := priorities[1 + (random() * 6)::INTEGER];
        created := '2023-06-01'::TIMESTAMP + (random() * 400)::INTEGER * INTERVAL '1 day' + (random() * 8 + 8)::INTEGER * INTERVAL '1 hour';
        resolved := created + (random() * 72 + 1)::INTEGER * INTERVAL '1 hour';
        
        INSERT INTO support_tickets (customer_id, category, priority, created_at, resolved_at, satisfaction_score, status)
        VALUES (cust_id, ticket_cat, ticket_priority, created, resolved, (random() * 4 + 1)::INTEGER, 'resolved');
    END LOOP;
END $$;

-- Order items (1-4 line items per order, priced from the product catalog)
DO $$
DECLARE
    ord RECORD;
    line_count INTEGER;
    j INTEGER;
    prod RECORD;
    qty INTEGER;
BEGIN
    FOR ord IN SELECT id FROM orders LOOP
        line_count := 1 + (random() * 3)::INTEGER;   -- 1 to 4 items
        FOR j IN 1..line_count LOOP
            SELECT id, price INTO prod FROM products ORDER BY random() LIMIT 1;
            qty := 1 + (random() * 4)::INTEGER;       -- 1 to 5 units
            INSERT INTO order_items (order_id, product_id, quantity, unit_price)
            VALUES (ord.id, prod.id, qty, prod.price);
        END LOOP;
    END LOOP;
END $$;

-- Recompute each order's total from its line items so revenue reports reconcile
UPDATE orders o
SET total_amount = sub.total
FROM (
    SELECT order_id, SUM(quantity * unit_price) AS total
    FROM order_items
    GROUP BY order_id
) sub
WHERE o.id = sub.order_id;

-- Inventory seed data
INSERT INTO inventory (
    product_id,
    qty_on_hand,
    avg_daily_sales,
    lead_time_days
)
SELECT
    id,
    CASE id % 5
        WHEN 0 THEN 15
        WHEN 1 THEN 120
        WHEN 2 THEN 45
        WHEN 3 THEN 80
        ELSE 200
    END,
    CASE id % 4
        WHEN 0 THEN 3.0
        WHEN 1 THEN 1.5
        WHEN 2 THEN 5.0
        ELSE 2.0
    END,
    CASE id % 3
        WHEN 0 THEN 30
        WHEN 1 THEN 14
        ELSE 21
    END
FROM products;