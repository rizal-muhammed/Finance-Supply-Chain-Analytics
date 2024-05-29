-- Supply chain analytics

-- Write a procedure to get forecast accuracy
-- input is fiscal year
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_forecast_accuracy`(
	in_fiscal_year int
)
BEGIN
	with 
	forecast_err_table as
	(
	select
		customer_code,
		sum((forecast_quantity - sold_quantity)) as net_error,
		sum(abs(forecast_quantity - sold_quantity)) as abs_err,
		sum((forecast_quantity - sold_quantity))*100/sum(forecast_quantity) as net_err_pct,
		sum(abs(forecast_quantity - sold_quantity))*100/sum(forecast_quantity) as abs_err_pct
	from fact_act_est s
	where s.fiscal_year = in_fiscal_year
	group by customer_code
	)

	select 
		f.*,
		c.customer,
		c.market,
		c.region,
		case
			when (abs_err_pct > 100) then 0
			else 100 - abs_err_pct
		end as forecast_accuracy
	from forecast_err_table f
	join dim_customer c
	using (customer_code)
	order by forecast_accuracy asc;
	END

-- Write a procedure to get market badge provided market, fiscal_year as input
-- if Quantity > 5M, the corresponding market badge = "Gold", otherwise "Silver"
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_market_badge`(
	IN in_market varchar(45),
    IN in_fiscal_year year,
    OUT out_badge varchar(20)
)
BEGIN
	declare qty bigint default 0;
    # retrieve total qty for a given market + fiscal year
	select 
		c.market,
		sum(s.sold_quantity) as qty
	from fact_sales_monthly s
	join dim_customer c
	on s.customer_code = c.customer_code
	where 
		get_fiscal_year(s.date) = in_fiscal_year and
		c.market = in_market
	group by c.market;
    
    # determine market badge
    if qty > 5000000 then
		set out_badge = "Gold";
	else
		set out_badge = "Silver";
	end if;
END