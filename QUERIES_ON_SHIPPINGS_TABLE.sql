-- Queries on the 'Shippings' Table: :

use volcanus;

--  Retrieve all shipping information from the 'Shippings' table.
SELECT*FROM SHIPPINGS;

-- Find the number of shipping records in the 'Shippings' table.
SELECT COUNT(*) AS SHIPPING_RECORDS FROM SHIPPINGS;

-- Retrieve the shipping statuses for orders with customer IDs 3 and 4.
SELECT STATUSS FROM SHIPPINGS WHERE CUSTOMER IN (3,4);

-- List the distinct shipping statuses.
SELECT DISTINCT(STATUSS) FROM SHIPPINGS;

-- Count the number of pending and delivered orders.
SELECT 
    SUM(CASE WHEN statuss = 'Pending' THEN 1 ELSE 0 END) AS num_pending_orders,
    SUM(CASE WHEN statuss = 'Delivered' THEN 1 ELSE 0 END) AS num_delivered_orders
FROM Shippings;

-- Retrieve the shipping statuses for orders with shipping IDs 1 and 3.
SELECT statuss FROM SHIPPINGS WHERE SHIPPING_ID IN (1,3);

-- Find the most common shipping status in the 'Shippings' table.
SELECT statuss, COUNT(*) AS status_count
FROM Shippings
GROUP BY statuss
ORDER BY status_count DESC
LIMIT 1;

-- Retrieve the shipping statuses for orders with customer IDs 1, 2, and 3.
SELECT statuss FROM SHIPPINGS WHERE CUSTOMER IN (1,2,3);

-- List the shipping records in ascending order of shipping ID.
SELECT*FROM SHIPPINGS ORDER BY SHIPPING_ID ASC;

-- Find the shipping status for order with shipping ID 5.
SELECT statuss FROM SHIPPINGS WHERE SHIPPING_ID = 5;

-- Retrieve the shipping statuses for orders with customer IDs 1, 2, and 4.
SELECT statuss FROM SHIPPINGS WHERE CUSTOMER IN (1,2,4);

-- List the shipping records in descending order of status.
SELECT*FROM SHIPPINGS ORDER BY statuss DESC;

-- Find the total number of pending orders.
SELECT COUNT(*) AS TOTAL_PENDING_ORDER FROM SHIPPINGS WHERE statuss ='PENDING';

-- Retrieve the shipping statuses for orders with customer IDs 2 and 5.
SELECT statuss FROM SHIPPINGS WHERE CUSTOMER IN (2,5);

-- Count the number of delivered orders.
SELECT COUNT(*) AS TOTAL_DELIVERED_ORDER FROM SHIPPINGS WHERE statuss ='DELIVERED';

-- Retrieve the shipping statuses for orders with shipping IDs 2 and 4.
SELECT statuss FROM SHIPPINGS WHERE CUSTOMER IN (2,4);

-- List the shipping records in alphabetical order by status.
SELECT*FROM SHIPPINGS ORDER BY statuss ASC;

-- Find the total number of records with 'Pending' status.
SELECT COUNT(*) AS TOTAL_PENDING_statuss FROM SHIPPINGS WHERE statuss ='PENDING';

-- Retrieve the shipping statuses for orders with customer IDs 3 and 5.
SELECT statuss FROM SHIPPINGS WHERE CUSTOMER IN (3,5);

-- List the shipping records in reverse alphabetical order by status. 
SELECT*FROM SHIPPINGS ORDER BY statuss DESC;


 COMMIT;
