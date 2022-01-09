-- Create a table rentals_may to store the data from rental table with information for the month of May
-- Insert values in the table rentals_may using the table rental, filtering values only for the month of May.
 
   create table if not exists sakila.table_rentals_may 
   as
   (
	 select * 
	 from sakila.rental
	 where Month(rental_date)=5
   );
   

-- Create a table rentals_june to store the data from rental table with information for the month of June.
-- Insert values in the table rentals_june using the table rental, filtering values only for the month of June

   create table if not exists sakila.table_rentals_june 
   as
   (
	 select * from sakila.rental 
	 where Month(rental_date)=6
   );
   
   select * from sakila.table_rentals_june; -- Checking if table is created
   
-- Check the number of rentals for each customer for May

   select customer_id as customer_may,
   count(*) as number_of_rentals 
   from sakila.table_rentals_may
   group by customer_id;

-- Check the number of rentals for each customer for June

   select customer_id as customer_june,count(*) as number_of_rentals 
   from sakila.table_rentals_june
   group by customer_id;


