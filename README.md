# 🎮 Game Sales SQL Analysis

This project analyzes video game sales data across various regions and platforms using SQL queries. It was developed as part of the SQL Course 4 Assignment for Internshala's Data Science course.

---

## 📂 Datasets Used

- **games**: Contains details of games like `GameID`, `GameTitle`, `Genre`, `ReleaseDate`, and `Developer`.
- **game sales**: Contains transactional data including `GameID`, `Platform`, `SalesRegion`, `UnitsSold`, and `Price`.

---

## 🎯 Objective

The main goal of this project is to extract valuable insights from game sales data using structured SQL queries, which include:

- Data Insertion
- Updating and Deletion
- Aggregation
- Joining Tables
- Handling Missing Data
- De-duplication of Records

---

## ✅ Tasks Performed

1. Inserted a new game: *"Future Racing"* into the `games` table.
2. Updated the price of GameID 2 on the **PlayStation** platform.
3. Deleted GameID 5 safely from the `game sales` table.
4. Calculated total units sold for each game across all platforms and regions.
5. Found the top-selling game in **North America**.
6. Displayed game titles, platforms, regions, and corresponding units sold.
7. Retrieved all games, even those with no associated sales.
8. Extracted records from `game sales` that do not have matching entries in the `games` table.
9. Filtered sales from **North America** and **Europe**, removing duplicates.
10. Retrieved the same without removing duplicates.

---

## ⚙️ SQL Features Used

- `JOIN`, `LEFT JOIN`
- `GROUP BY`, `ORDER BY`
- `SUM()`, `MAX()`
- `DISTINCT`
- `LIMIT`
- `INSERT`, `UPDATE`, `DELETE`

---

## 🛡️ Safe Update Mode Handling (MySQL)

To comply with **MySQL’s Safe Update Mode**, which prevents unsafe `UPDATE` or `DELETE` without keys:

- Used `SET SQL_SAFE_UPDATES = 0;` before such operations
- Re-enabled with `SET SQL_SAFE_UPDATES = 1;` after execution
- Included `LIMIT` in `DELETE` queries for additional safety
- Used subqueries with derived tables to avoid the "Error 1093" issue

These practices ensure the script runs safely in environments where data protection settings are enabled.

---

## 🛠 Technologies Used

- MySQL / SQL Workbench
- Excel & Google Sheets
- Internshala Data Science SQL Course

---

## 📘 Database Info

- **Database Name**: `internshaladb_ass2`
- **Tables Used**:
  - `games`
  - `game sales` (case-sensitive, contains space)

---
