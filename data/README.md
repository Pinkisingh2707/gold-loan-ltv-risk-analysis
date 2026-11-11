# Data

The full tables are part of the JobPrax project. This folder has a sample of each table and its columns.

### Gold loans (`gold_loans.csv`)

One row per loan as extracted from the loan system. Contains duplicates and inconsistent formats.

Sample: [`data/gold_loans_sample.csv`](gold_loans_sample.csv) (first 100 rows)

| Column | Type | Description |
| --- | --- | --- |
| loan_id | text | Loan identifier |
| customer_id | text | Customer identifier (see customers.csv) |
| branch_id | text | Disbursing branch (see branches.csv) |
| disbursal_date | date | Date the loan was disbursed |
| scheme | text | Standard, Agri or Express |
| principal | number | Amount disbursed, ₹ |
| interest_rate_pct | number | Annual interest rate, % |
| tenure_months | number | Loan tenure in months |
| gold_weight_gm | number | Net weight of pledged gold, grams |
| purity | text | Purity as recorded by the branch (e.g. 22K, 22 KT, 916) |
| appraised_value | number | Gold value at disbursal, ₹ |
| ltv_at_disbursal_pct | number | LTV at disbursal, % |
| status | text | Active, Closed or Auctioned (letter case varies) |

### Repayments (`repayments.csv`)

Every payment received. Interest payments do not reduce the principal.

Sample: [`data/repayments_sample.csv`](repayments_sample.csv) (first 100 rows)

| Column | Type | Description |
| --- | --- | --- |
| payment_id | text | Payment identifier |
| loan_id | text | Loan the payment belongs to |
| payment_date | date | Date received |
| amount | number | Amount, ₹ |
| payment_type | text | interest or principal |
| mode | text | UPI, Cash or NEFT |

### Gold rates (`gold_rates.csv`)

Daily 24K gold rate used for valuation (no rates on Sundays and some holidays).

Sample: [`data/gold_rates_sample.csv`](gold_rates_sample.csv) (first 100 rows)

| Column | Type | Description |
| --- | --- | --- |
| rate_date | date | Rate date |
| rate_24k_per_gram | number | 24-carat gold rate, ₹ per gram |

### Branches (`branches.csv`)

Branch master data.

Sample: [`data/branches_sample.csv`](branches_sample.csv) (first 100 rows)

| Column | Type | Description |
| --- | --- | --- |
| branch_id | text | Branch identifier |
| branch_name | text | Branch name |
| city | text | City (some older names are still in use) |
| state | text | State |
| region | text | North, South or West |
| opened_on | date | Branch opening date |

### Customers (`customers.csv`)

Customer profile (no personal identifiers).

Sample: [`data/customers_sample.csv`](customers_sample.csv) (first 100 rows)

| Column | Type | Description |
| --- | --- | --- |
| customer_id | text | Customer identifier |
| age | number | Age in years |
| occupation | text | Occupation category |
| city | text | City of residence |
| state | text | State of residence |
| kyc_document | text | Document used for KYC |
| customer_since | date | First relationship date |
