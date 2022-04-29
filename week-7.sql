use project;
---Indexes
create index product_details on product(product_Id,Name,price);
show indexes from  product_details;

create index payment_details on payment(Customer_name,Total_payment,Date,Product_product_Id);
show indexes from payment_details;

----Views
create view Product_Sales as select product.product_Id,product.Name,product.price,sales.Quantity,sales.Date_Purchase from product
    -> inner join sales on product.product_Id=sales.product_product_Id order by product.Name;
select * from Product_Sales;
create view Orders as select customer.customer_id,customer.firstname,customer.lastname,customer.product_product_Id,payment.Payment_ID,payment.Total_Payment,payment.Date from customer
    -> inner join payment on customer.product_product_Id=payment.product_product_Id order by customer.firstname;
select * from Orders;