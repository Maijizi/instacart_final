/**train data with products, aisle,and departments merged**/
USE Instacart_db;

SELECT a.aisle_id, a.aisle, p.product_id,p.product_name,p.department_id,d.department,o.add_to_cart_order,o.reordered
FROM aisles a
JOIN  products p 
ON a.aisle_id=p.aisle_id 
JOIN departments d ON p.department_id=d.department_id

JOIN order_products__train o ON p.product_id=o.product_id;

/**prior data with products, aisle,and departments merged**/


SELECT a.aisle_id, a.aisle, p.product_id,p.product_name,p.department_id,d.department,r.reordered,r.add_to_cart_order
FROM aisles a
JOIN  products p 
ON a.aisle_id=p.aisle_id 
JOIN departments d ON p.department_id=d.department_id

JOIN order_products__prior r ON p.product_id=r.product_id;



























