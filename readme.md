# SQL Data Analytics Project

A SQL-based data analytics project focused on exploring sales data, identifying business trends, and generating customer and product insights using Microsoft SQL Server.

## 📌 Project Overview

This project demonstrates the use of SQL for data exploration and advanced analytics. It covers the process of understanding a sales database, analyzing key business metrics, identifying trends, and building analytical reports to support data-driven decision-making.

## 🎯 Project Objectives

- Explore and understand the structure of a relational database.
- Analyze sales performance and business metrics.
- Identify trends and patterns in customer and product data.
- Apply advanced SQL techniques to solve analytical problems.
- Generate customer and product reports for business insights.

## 🛠️ Tools & Technologies

- **Database:** Microsoft SQL Server
- **Query Language:** SQL (T-SQL)
- **Database Tool:** SQL Server Management Studio (SSMS)
- **Version Control:** Git & GitHub

## 📊 Project Workflow

### 1. Exploratory Data Analysis (EDA)

Explore the database to understand its structure, data quality, and business context.

Key activities:
- Database and table exploration.
- Understanding data types and relationships.
- Analyzing date ranges and business dimensions.
- Calculating key metrics and aggregated measures.
- Identifying top-performing products and customers.

### 2. Advanced Data Analytics

Apply advanced SQL techniques to uncover deeper insights.

Key activities:
- Time-based trend analysis.
- Running totals and cumulative calculations.
- Performance analysis.
- Part-to-whole analysis.
- Customer segmentation.
- Product segmentation.
- Customer and product reporting.

## 📂 Repository Structure

```text
SQL-Data-Analytics-Project/
│
├── 00_setup/
│   └── Database setup instructions
│
├── 01_datasets/
│   ├── DataWarehouseAnalytics.bak
│   └── csv-files/
│
├── 02_docs/
│   └── Project roadmap and documentation
│
├── 03_scripts/
│   ├── 00_init_database.sql
│   └── SQL analysis scripts
│
└── README.md
```

## 🗄️ Database Setup

You can prepare the database using either of the following methods.

### Option 1: Restore the Database Backup

1. Install Microsoft SQL Server 2022 or a compatible newer version.
2. Open SQL Server Management Studio (SSMS).
3. Restore the `DataWarehouseAnalytics.bak` file located in `01_datasets/`.
4. Verify that the database and its tables are available.

### Option 2: Create the Database from CSV Files

1. Download or clone this repository.
2. Ensure the CSV files are available in `01_datasets/csv-files/`.
3. Open `03_scripts/00_init_database.sql` in SSMS.
4. Update the CSV file paths in the script to match your local environment.
5. Execute the script to create and populate the database.

**Note:** The database initialization script may require updating file paths and configuring SQL Server permissions before execution.

## 📈 Key SQL Concepts

The project covers several important SQL concepts:

- Data exploration and aggregation.
- Filtering, sorting, and grouping.
- Joins and relational data analysis.
- Common Table Expressions (CTEs).
- Subqueries.
- Window functions.
- Date and time analysis.
- Running totals and cumulative metrics.
- Customer and product segmentation.
- Analytical reporting.

## 💡 Expected Outcomes

By completing this project, you can develop practical experience in:

- Writing analytical SQL queries.
- Understanding relational sales data.
- Translating business questions into SQL queries.
- Identifying sales trends and customer behavior.
- Producing structured reports from a relational database.



## 📄 License

This project uses materials distributed under the MIT License. Please refer to the original repository's license for attribution and usage terms.
