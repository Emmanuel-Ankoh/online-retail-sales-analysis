# online-retail-sales-analysis
SQL-based analysis of retail transactions to explore product pricing and sales patterns.
# Online Retail Sales Analysis with SQL

## Project Overview

This project uses SQL to explore a real-world online retail transaction dataset and answer practical business questions about product pricing, product descriptions, and sales performance.

The project demonstrates my ability to write SQL queries, filter and sort data, handle missing values, and translate business questions into data analysis tasks.

This portfolio project is part of my continuous development in data analytics, business intelligence, and data-driven decision-making.

## Objectives

- Practice SQL using a real retail dataset.
- Retrieve relevant information using `SELECT` and `WHERE`.
- Filter text data using the `LIKE` operator and wildcard patterns.
- Identify and handle missing values using `IS NULL` and `IS NOT NULL`.
- Sort query results using `ORDER BY`.
- Limit output using `LIMIT`.
- Develop more advanced retail analysis using aggregation and grouping.
- Communicate findings in a clear, business-oriented format.

## Dataset

**Source:** [UCI Machine Learning Repository — Online Retail](https://archive.ics.uci.edu/dataset/352/online%2Bretail)

The dataset contains transactions from a UK-based online retail business recorded between December 2010 and December 2011.

The data includes information such as invoice numbers, product descriptions, quantities, transaction dates, unit prices, customer identifiers, and countries.

The dataset is used for educational and portfolio purposes.

## Tools and Technologies

- **SQL:** Data retrieval, filtering, sorting, and analysis.
- **GitHub:** Version control and project documentation.
- **Online Retail Dataset:** Real-world transactional data.

Additional tools, such as Python and a data visualization platform, may be incorporated as the project develops.

## Business Questions

This project will progressively address questions such as:

1. Which products have the highest unit prices?
2. Which products have descriptions beginning or ending with particular words?
3. Which countries generate the highest transaction values?
4. Which products are purchased in the largest quantities?
5. What patterns can be identified in retail transactions?
6. How can SQL analysis support business decisions?

## SQL Skills Demonstrated

### 1. Selecting and Filtering Data

Retrieve relevant columns and filter records according to specific conditions.

### 2. Pattern Matching

Use `LIKE` with wildcard characters to find product descriptions matching text patterns.

Examples:

- `'WHITE%'` — descriptions beginning with `WHITE`.
- `'%BAG'` — descriptions ending with `BAG`.
- `'%BAG%'` — descriptions containing `BAG`.

### 3. Handling Missing Values

Use `IS NULL` and `IS NOT NULL` to identify or exclude records with missing values.

### 4. Sorting and Limiting Results

Use `ORDER BY` to sort results and `LIMIT` to return a specified number of rows.

### 5. Aggregation and Business Analysis

As the project progresses, I will apply `COUNT()`, `SUM()`, `AVG()`, `GROUP BY`, and `HAVING` to investigate retail performance.

## Project Structure

```text
online-retail-sales-analysis/
├── data/
│   └── README.md
├── sql/
│   └── retail_analysis.sql
├── results/
├── README.md
└── .gitignore
```

- `data/` — dataset acquisition and data documentation.
- `sql/` — SQL queries used throughout the analysis.
- `results/` — verified query outputs and future visualizations.
- `README.md` — project overview, objectives, methods, and findings.
- `.gitignore` — files and local artifacts excluded from version control.

## Current Progress

**Status: In progress**

The initial phase focuses on basic SQL queries involving product descriptions, missing values, sorting, and limiting results.

Future updates will introduce aggregation, grouped analysis, data-quality checks, and business insights.

We will add results and conclusions after executing queries and validating them against the dataset.


## Key Findings: Top 5 by Revenue

Using SQL aggregation, I identified the five entries with the highest recorded revenue in the Online Retail dataset.

| Rank | StockCode | Description | Total Revenue |
|---:|---|---|---:|
| 1 | DOT | DOTCOM POSTAGE | 115,108.00 |
| 2 | 22423 | REGENCY CAKESTAND 3 TIER | 87,430.16 |
| 3 | 85123A | WHITE HANGING HEART T-LIGHT HOLDER | 57,557.55 |
| 4 | 85099B | JUMBO BAG RED RETROSPOT | 47,307.38 |
| 5 | POST | POSTAGE | 45,006.43 |

### Business Insights

- Postage-related entries occupy two positions in the top five, suggesting that delivery charges should be separated from merchandise sales when evaluating product performance.
- The Regency Cake stand is the highest-revenue physical product in this top-five list.
- This analysis demonstrates the use of `SUM()`, `GROUP BY`, `ORDER BY`, and `LIMIT` to aggregate and rank retail transaction data.

*Note: Revenue values reflect the query's filters and are reported in the dataset's monetary units. Postage-related entries are not physical products.*

## Future Improvements

- Complete a broader set of retail analysis questions.
- Investigate data quality and transaction anomalies.
- Analyze sales by country, product, and time period.
- Create charts or a business intelligence dashboard.
- Document actionable recommendations supported by the results.

## Author

**Emmanuel Ankoh**

Master's graduate in Mathematical Engineering with a background in financial management, statistics, Python, data analysis, and machine learning.

This project reflects my ongoing development in SQL and practical business analytics.

## Acknowledgements

Thanks to the [UCI Machine Learning Repository](https://archive.ics.uci.edu/) for making the Online Retail dataset available for research and learning.
