-- schema.sql: Retail Operations Database

-- Customers
CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150),
    segment VARCHAR(20) CHECK (segment IN ('enterprise', 'mid-market', 'smb', 'consumer')),
    region VARCHAR(50),
    country VARCHAR(50),
    loyalty_tier VARCHAR(20) DEFAULT 'bronze',
    signup_date DATE NOT NULL,
    is_active BOOLEAN DEFAULT true
);

-- Product categories
CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department VARCHAR(50)
);

-- Products
CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    category_id INTEGER REFERENCES categories(id),
    price NUMERIC(10,2) NOT NULL,
    cost NUMERIC(10,2),
    is_active BOOLEAN DEFAULT true
);

-- Orders
CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES customers(id),
    order_date DATE NOT NULL,
    status VARCHAR(20) CHECK (status IN ('completed', 'pending', 'shipped', 'cancelled', 'refunded')),
    total_amount NUMERIC(10,2),
    channel VARCHAR(30) CHECK (channel IN ('web', 'mobile', 'store', 'phone'))
);

-- Order items
CREATE TABLE order_items (
    id SERIAL PRIMARY KEY,
    order_id INTEGER REFERENCES orders(id),
    product_id INTEGER REFERENCES products(id),
    quantity INTEGER NOT NULL DEFAULT 1,
    unit_price NUMERIC(10,2) NOT NULL
);

-- Support tickets
CREATE TABLE support_tickets (
    id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES customers(id),
    order_id INTEGER REFERENCES orders(id),
    created_at TIMESTAMP NOT NULL,
    resolved_at TIMESTAMP,
    category VARCHAR(50),
    priority VARCHAR(10) CHECK (priority IN ('low', 'medium', 'high', 'critical')),
    satisfaction_score INTEGER CHECK (satisfaction_score BETWEEN 1 AND 5),
    status VARCHAR(20) DEFAULT 'open'
);

-- Inventory
CREATE TABLE inventory (
    product_id INTEGER PRIMARY KEY REFERENCES products(id),
    qty_on_hand INTEGER NOT NULL CHECK (qty_on_hand >= 0),
    avg_daily_sales NUMERIC(10,2) NOT NULL,
    lead_time_days INTEGER NOT NULL
);