# Finance-Supply-Chain-Analytics
## Problem Statement
AtliQ Hardware produces hardware peripherals. As part of promoting data driven decisions throughout the orgaization, the sales director decided to approve for a data analytics project to convert raw data into dashboards reports with SQL.

### Design
As part of solving the challenge, a multiple reports are built with SQL for Finance and Supply Chain departments

---

### Finance Analytics
Create a monthly gross sales for customer <br />
Monthly gross sales for customer with customer_code = 90002002 : [Sample Report](https://github.com/rizal-muhammed/Finance-Supply-Chain-Analytics/blob/main/Sample%20Reports/Monthly%20gross%20sales%20for%20customer.csv) <br />

Write a stored procedure to get top n customers by markets <br />
Top 10 Customers for Market "India" based on net sales : [Sample Report](https://github.com/rizal-muhammed/Finance-Supply-Chain-Analytics/blob/main/Sample%20Reports/top_10_customers_INDIA.csv) <br />

Write a stored procedure to get top n markets based on net sales <br />
Top 10 markets by net sales in FY2021 : [Sample Report](https://github.com/rizal-muhammed/Finance-Supply-Chain-Analytics/blob/main/Sample%20Reports/top_10_markets_by_net_sales.csv) <br />

Please refer [here](https://github.com/rizal-muhammed/Finance-Supply-Chain-Analytics/blob/main/finance_analytics.sql) for SQL queries

---

### Supply Chain Analytics
Procedure to get forecast accuracy (input is fiscal_year) <br />
Forecast accuracy for fiscal_year 2021 : [Sample Report](https://github.com/rizal-muhammed/Finance-Supply-Chain-Analytics/blob/main/Sample%20Reports/forecast_accuracy_fy2021.csv) <br />

Procedure to get market badge based on market, input is fiscal_year. (Criteria : If Quantity > 5M, Corresponding market badge = "Gold", Otherwise "Silver") <br />
Market badge for market "India" in fiscal_year 2021 : [Sample Report](https://github.com/rizal-muhammed/Finance-Supply-Chain-Analytics/blob/main/Sample%20Reports/market_badge_INDIA_fy2021.csv) <br />

Please refer [here](https://github.com/rizal-muhammed/Finance-Supply-Chain-Analytics/blob/main/supply_chain_analytics.sql) for SQL queries
