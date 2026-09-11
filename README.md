# SQL Practice Scripts

This folder contains SQL Server practice queries for the `TrainingDB` database.

## Requirements

- SQL Server Express installed and running
- `sqlcmd` available in the terminal
- Windows authentication enabled

The commands below use the local SQL Server Express instance named `SQLEXPRESS`.

## First-Time Setup

Run these commands from the project root:

```cmd
sqlcmd -S .\SQLEXPRESS -E -C -d master -i src\create_database.sql
sqlcmd -S .\SQLEXPRESS -E -C -d TrainingDB -i src\creating_table.sql
sqlcmd -S .\SQLEXPRESS -E -C -d TrainingDB -i src\inserting_into_table.sql
```

`-S` selects the server, `-E` uses Windows authentication, `-C` trusts the local SQL Server certificate, and `-d` selects the database.

## Run A Query

Place or edit a query in one of the `.sql` files, save it, and run it from the project root:

```cmd
sqlcmd -S .\SQLEXPRESS -E -C -d TrainingDB -i src\query.sql
```

For example, to view all employees:

```cmd
sqlcmd -S .\SQLEXPRESS -E -C -d TrainingDB -i src\viewing_table.sql
```

To run a query directly without a file:

```cmd
sqlcmd -S .\SQLEXPRESS -E -C -d TrainingDB -Q "SELECT * FROM dbo.EMP;"
```

## Script Guide

| File | Topic |
| --- | --- |
| `create_database.sql` | Create and select `TrainingDB` |
| `creating_table.sql` | Create the `EMP` and `DEPT` tables |
| `inserting_into_table.sql` | Insert employee records |
| `viewing_table.sql` | View the employee table |
| `SELECT&FROM.sql` | Basic `SELECT` and `FROM` queries |
| `operators.sql` | SQL operators |
| `assignemnt&logical_operator.sql` | Assignment and logical operators |
| `group_by.sql` | Grouping rows |
| `haveing.sql` | Filtering grouped results with `HAVING` |
| `aggrigrate_function.sql` | Aggregate functions |
| `multirow_fun.sql` | Multi-row functions |
| `join.sql` | Join queries |
| `innerf join.sql` | Inner join queries |
| `subquery.sql` | Subqueries |
| `nested_subqueries.sql` | Nested subqueries |
| `notin.sql` | `NOT IN` queries |
| `null&isnull.sql` | `NULL` and `ISNULL` |

## SQL Comments

Use `--` for a single-line comment:

```sql
-- Show employees from department 20
SELECT *
FROM dbo.EMP
WHERE DEPTNO = 20;
```

Use `/* ... */` for a multi-line comment.

## Troubleshooting

If the connection fails, confirm that the `SQLEXPRESS` service is running and use `.\SQLEXPRESS` rather than `M1` or `localhost`.

If a script reports that a table already exists or a key is duplicated, the setup data has already been loaded. Run only the query file you want to test.

> Note: Before running `creating_table.sql`, remove the comma after `LOC VARCHAR(25)` in the `DEPT` table definition if it is still present. SQL Server does not allow a trailing comma before `);`.
