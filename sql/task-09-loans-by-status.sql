-- Task 9: Loans by status
-- Requirement: FR-01
--
-- After removing duplicates and converting `status` to lower case, return `status` and `loans` (the number of loans) for each status.

-- Write SQL here. Tables: gold_loans, repayments, gold_rates, branches, customers
SELECT 
    LOWER(status) AS status,
    COUNT(*) AS loans
FROM (
    SELECT DISTINCT * FROM gold_loans
) AS unique_loans
GROUP BY LOWER(status)
ORDER BY loans DESC;
