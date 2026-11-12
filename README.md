# Gold Loan LTV Breach Early Warning

**Banking & Finance** · SQL, Python (pandas, seaborn)

Gold prices have fallen sharply. Find which active gold loans now breach the regulatory LTV cap, how much money is at risk, and where.

> A live industry project on [JobPrax](https://www.jobprax.com). The client, Suvarna Finance Ltd, and its data are simulated.

> **Status: in progress.** 13 of 50 tasks solved as of 12 Nov 2026. The final report will be added when the project is complete.

## Business problem

Management does not know how many active gold loans currently breach the 75% LTV cap, how much outstanding principal is exposed, or which schemes, states and branches are driving the problem. The risk team needs a reliable, reproducible assessment as of 15 October 2026 to plan margin calls before the next risk committee.

## Objectives

- Measure the fall in the gold rate from its 2026 peak to the assessment date.
- Recalculate the current LTV of every active gold loan using the latest gold rate.
- Quantify the number of loans and the outstanding principal above the 75% cap, and above 80% (critical).
- Identify the schemes, disbursal periods, states and branches that contribute most to breaches.
- Recommend a prioritised margin-call plan and any change needed to lending policy.

## Work so far

- ✅ [Task 1: Size of the loan extract](sql/task-01-size-of-the-loan-extract.sql)
- ✅ [Task 5: Disbursal period](sql/task-05-disbursal-period.sql)
- ✅ [Task 9: Loans by status](sql/task-09-loans-by-status.sql)
- ⏳ [Task 11: Loans by karat](sql/task-11-loans-by-karat.sql)
- ✅ [Task 12: Missing gold weight](sql/task-12-missing-gold-weight.sql)

## What I did

- Solved 13 of 50 analysis tasks tied to the business requirements
- Wrote 5 SQL queries, one per task, in [`sql/`](sql)
- Explored and charted the data in Python, in [`notebook/analysis.ipynb`](notebook/analysis.ipynb)

## Skills

Data cleaning · Joins and aggregation · Business rules · Risk metrics · Executive reporting

## Data

- **Gold loans** (`gold_loans.csv`): One row per loan as extracted from the loan system. Contains duplicates and inconsistent formats.
- **Repayments** (`repayments.csv`): Every payment received. Interest payments do not reduce the principal.
- **Gold rates** (`gold_rates.csv`): Daily 24K gold rate used for valuation (no rates on Sundays and some holidays).
- **Branches** (`branches.csv`): Branch master data.
- **Customers** (`customers.csv`): Customer profile (no personal identifiers).

Column details and a sample of each table are in [`data/`](data).

## Repository structure

```
sql/          one SQL file per task
notebook/     Python analysis
data/         table samples and column descriptions
```
