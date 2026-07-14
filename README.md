# Northwind_SQL_Project
Using Northwind Database | SQL | Python , to Answer 16 business question

# Northwind Sales Analytics — SQL Server + Python

A 16-question, end-to-end data analytics project on the classic **Northwind** database — pairing every real SQL Server query result with its own Python visualization. Built as part of my Data Analysis training with the **National Telecommunication Institute (NTI)**, under the **Digital Egypt Youth (DEY)** initiative.

> 📊 SQL Server (T-SQL) → Python (pandas) → Visualization (Matplotlib / Seaborn)

---

## 📌 Project Overview

This project explores the Northwind database — a sample database that models a small import/export food company — to answer 16 practical business questions about products, pricing, suppliers, customers, employees, and inventory.

Every question follows the same three-step pipeline:

1. **Query** — a T-SQL query is written and run directly against SQL Server (joins, `GROUP BY`, aggregate functions, subqueries, `HAVING`).
2. **Verify** — the raw result grid from SQL Server Management Studio (SSMS) is captured as proof of the real output.
3. **Visualize** — `pyodbc` connects Python to SQL Server, `pandas.read_sql()` loads the result into a DataFrame, and `matplotlib` / `seaborn` renders a chart chosen to fit the story (bar, pie, donut, heatmap, lollipop, bubble).

---

## 🛠️ Tech Stack

| Layer | Tools |
|---|---|
| Database | SQL Server (Northwind sample database) |
| Connectivity | `pyodbc` |
| Data Handling | `pandas` |
| Visualization | `matplotlib`, `seaborn` |
| Environment | Jupyter Notebook |
| Presentation | PowerPoint (16-question slide deck) |

---

## ❓ The 16 Questions

| # | Question |
|---|---|
| 1 | Product Distribution by Category |
| 2 | Average Price by Category |
| 3 | Supplier Footprint by Country |
| 4 | Customer Base by Country |
| 5 | Employee Distribution by City |
| 6 | Low Stock Alert (products under 10 units) |
| 7 | Top Suppliers by Product Range |
| 8 | Total Inventory Value by Category |
| 9 | Territories per Employee |
| 10 | Top 10 Cities by Customers |
| 11 | Most Common Contact Titles |
| 12 | Average & Max Price per Supplier |
| 13 | Territories by Region |
| 14 | Premium Products (Above Category Average) |
| 15 | Suppliers With More Than 2 Products |
| 16 | Customer Distribution by Region |

---

## 💡 Key Insights

- **Product catalog** is broad and diversified across 8 categories — Confections leads with 13 products, Produce trails with 5.
- **Pricing** — Meat/Poultry ($54.01 avg) and Beverages ($37.98 avg) command premium prices, despite having fewer products; Grains/Cereals is the value tier ($20.25 avg).
- **Global footprint** — suppliers span 16 countries, customers span 21 countries.
- **Operations** are centralized in London (5 employees), with lean single-person U.S. offices.
- **Inventory risk** — 12 products sit under a safe stock threshold, with 5 completely out of stock.
- **Pricing outliers** — 27 products are priced above their category average, led by Côte de Blaye at $263.50.

---

## 📂 Repository Structure

```
├── Sql_Project.ipynb                  # Full notebook: SQL queries + Python visualizations
├── Northwind_SQL_Python_Analysis.pptx # 21-slide presentation (SQL + output + chart per question)
├── charts/                            # Exported chart images (.png)
└── README.md
```

---

## ▶️ How to Run

1. Restore the **Northwind** sample database on a local SQL Server instance.
2. Install the required Python packages:
   ```bash
   pip install pyodbc pandas matplotlib seaborn
   ```
3. Update the connection string in the notebook with your SQL Server instance name:
   ```python
   conn = pyodbc.connect(
       'DRIVER={ODBC Driver 17 for SQL Server};'
       'SERVER=YOUR_SERVER_NAME;'
       'DATABASE=Northwind;'
       'Trusted_Connection=yes;'
   )
   ```
4. Run `Sql_Project.ipynb` top to bottom — each cell queries SQL Server, loads the result into pandas, and renders the matching chart.

---

## 📑 Presentation

The full slide deck (`Northwind_SQL_Python_Analysis.pptx`) walks through all 16 questions, showing for each one:
- The T-SQL query
- The real SQL Server / SSMS output
- The Python-generated chart
- A short, data-driven insight

---

## 🙏 Acknowledgments

Many thanks to my second home, **NTI**, and the **Digital Egypt Youth (DEY)** initiative for this opportunity and continuous support throughout the training.

---

## 👤 Author

**Eng. Omar Ibrahim**
Data Analytics Case Study

---

#### Tags
`SQL` `SQL Server` `Python` `pandas` `matplotlib` `seaborn` `Data Analysis` `Data Visualization` `Northwind`
