use adventure_works;
select round(sum(salesamount),2) as TS
from factsales;
select * from factsales;

# Total Sales per Customer
With CustomerDetails as (
select
customerfullname, round(Sum(salesamount),2) as TotalSales 
from factsales
group by 1)
select * from Customerdetails;

# Customers with Sales greater then 10,000
With CustomerDetails as (
select
customerfullname, round(Sum(salesamount),2) as TotalSales 
from factsales
group by 1)
select * from Customerdetails
where TotalSales> 10000;

#Total Sales per Product
with Productdetails as(
select ProductName, round(sum(salesamount),2) as Totalamount
	from factsales
    group by 1)
select * from Productdetails;

#Monthly Sales
With Monthlysales as(
Select monthname, round(sum(salesamount),2)Totalsales
 from factsales
 group by 1)
select * from monthlysales;

#Customer Revenue Ranking
With Customerranking as (
	select Customerfullname, 
    round(sum(salesamount),2) as totalsales,
    rank () over(order by sum(salesamount)desc) as revenue_rank
    from factsales
    group by  1)
select * from customerranking;

#Top 5 Customers
With Customerranking as (
	select Customerfullname, 
    round(sum(salesamount),2) as totalsales,
    rank () over(order by sum(salesamount)desc) as revenue_rank
    from factsales
    group by  1)
    #limit 5)
select * from customerranking
order by totalsales desc
limit 5;

#Product Ranking
With Productranking as (
	select productname,
    round(sum(totalproductcost),2) as totalcost,
    rank() over(order by sum(totalproductcost) desc)as product_rank
    from factsales
    group by 1)
select * from productranking;

#Customers Above Average Sales
With Customersales as (
	select customerfullname, 
    round(sum(salesamount),2)`Total Customer Sales`
    #round(avg(salesamount),2) `Average Sales`
    from factsales
    group by 1)
    #having `Total customer sales`>`average sales`)
select * from customersales
where `Total Customer Sales`>
	(select avg(`Total Customer Sales`)
    from customersales);
    select * from dimsalesterritory;
    
#Territory Sales Analysis
With total_territory_sales as (
	select d.salesterritorycountry,
    round(sum(f.salesamount),2) total_sales 
    from dimsalesterritory d 
    join factsales f 
    on d.salesterritorykey=f.salesterritorykey
    group by 1)
select * from 
	total_territory_sales 
	where total_sales > 
		(select avg(total_sales)
		from total_territory_sales);

#Top Customer per territory
With Avg_sales_per_territory as (
		select t.salesterritoryregion,
			f.customerfullname,
			round(sum(f.salesamount),2) Total_sales,
			rank() over(partition by t.salesterritoryregion 
			order by sum(f.salesamount) desc) rk
			from dimsalesterritory t
			join factsales f on
			t.salesterritorykey=f.salesterritorykey
			group by 1,2)
select * from avg_sales_per_territory
where rk=1;

#Running Total of Sales
With Running_total as (
	select Dates,
		sum(salesamount)totalsales
        from factsales
        group by 1)
select dates,
		totalsales,
        sum(totalsales) over(order by dates)as rn
        from running_total;

#Best Selling Product per Month
with highest_sales as (
	select MonthName,productname,
		   round(sum(salesamount)) total_sales, 
           rank() over(partition by monthname order by sum(salesamount) desc)rk
           from factsales
           group by 1,2)
	select * from highest_sales
    where rk=1;

#Customer First Purchase
with Firstpurchase as (
	select customerfullname,
    dates,
    row_number() over(partition by customerfullname order by dates asc)rk
    from factsales)
select * from firstpurchase
where rk=1;

#Customers Who Bought More Than 3 Products
WITH Customer_orders AS (
	SELECT 
		customerfullname,
		COUNT(DISTINCT productname) AS products_bought
	FROM factsales
	GROUP BY customerfullname)
	SELECT *
		FROM Customer_orders
		WHERE products_bought > 3;


            

    
