-- Financial analytics

-- Write a stored procedure to fetch monthly gross sales for customers
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_monthly_gross_sales_for_customer`(
	in_customer_codes text
)
BEGIN

	SELECT 
		s.date,
		sum(round(g.gross_price * s.sold_quantity, 2)) as monthly_sales
	FROM fact_sales_monthly s
	join fact_gross_price g
	on 
		s.product_code = g.product_code and
		g.fiscal_year = get_fiscal_year(s.date)
	where 
		find_in_set(s.customer_code, in_customer_codes) > 0
	group by s.date
	order by s.date asc;
	END

-- get_fiscal_year is a function, which returns the fiscal_year corresponding to input date
-- input date is in "yyyy-mm-dd" format
CREATE DEFINER=`root`@`localhost` FUNCTION `get_fiscal_year`(
	calendar_date date
) RETURNS int
    DETERMINISTIC
BEGIN
	declare fiscal_year int;
    set fiscal_year = year(date_add(calendar_date, interval 4 month));
RETURN fiscal_year;
END

-- Write a procedure to get top n customers by net sales
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_monthly_gross_sales_for_customer`(
	in_customer_codes text
)
BEGIN

	SELECT 
		s.date,
		sum(round(g.gross_price * s.sold_quantity, 2)) as monthly_sales
	FROM fact_sales_monthly s
	join fact_gross_price g
	on 
		s.product_code = g.product_code and
		g.fiscal_year = get_fiscal_year(s.date)
	where 
		find_in_set(s.customer_code, in_customer_codes) > 0
	group by s.date
	order by s.date asc;
	END

-- Write a stored procedure to get top n customers by markets
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_top_n_markets_by_net_sales`(
	in_fiscal_year int,
    in_top_n int
)
BEGIN
	SELECT
		market,
		round(sum(net_sales)/1000000, 2) as net_sales_mln
	FROM gdb0041.net_sales
	where fiscal_year = in_fiscal_year
	group by market
	order by net_sales_mln desc
	limit in_top_n;
END