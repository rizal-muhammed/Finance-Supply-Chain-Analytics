# Finance-Supply-Chain-Analytics
## Problem Statement
AtliQ Hardware produces hardware peripherals. As part of promoting data driven decisions throughout the orgaization, the sales director decided to approve for a data analytics project to convert raw data into dashboards reports with SQL.

### Design
As part of solving the challenge, a multiple reports are built with SQL for Finance and Supply Chain departments

---

### Finance Analytics
Create a monthly gross sales for customer <br />
[Sample Report](https://github.com/rizal-muhammed/Finance-Supply-Chain-Analytics/blob/main/Sample%20Reports/Monthly%20gross%20sales%20for%20customer.csv) : Monthly gross sales for customer with customer_code = 90002002 <br />

Write a stored procedure to get top n customers by markets <br />
[Sample Report](https://github.com/rizal-muhammed/Finance-Supply-Chain-Analytics/blob/main/Sample%20Reports/top_10_customers_INDIA.csv) : Top 10 Customers for Market "India" based on net sales <br />

Write a stored procedure to get top n markets based on net sales <br />
[Sample Report](https://github.com/rizal-muhammed/Finance-Supply-Chain-Analytics/blob/main/Sample%20Reports/top_10_markets_by_net_sales.csv) : Top 10 markets by net sales in FY2021 <br />

---

### Supply Chain Analytics
Procedure to get forecast accuracy (input is fiscal_year) <br />
[Sample Report](https://github.com/rizal-muhammed/Finance-Supply-Chain-Analytics/blob/main/Sample%20Reports/forecast_accuracy_fy2021.csv) : Forecast accuracy for fiscal_year 2021 <br />

Procedure to get market badge based on market, input is fiscal_year. If Quantity > 5M, Corresponding market badge = "Gold", Otherwise "Silver" <br />
[Sample Report](https://github.com/rizal-muhammed/Finance-Supply-Chain-Analytics/blob/main/Sample%20Reports/market_badge_INDIA_fy2021.csv) : Market badge for market "India" in fiscal_year 2021 <br />
