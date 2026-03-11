-- PURPOSE: Compare High Friction vs. Low Friction segments to identify behavioral or pricing disparities.
-- STRATEGY: Uses CASE logic to segment the Premium tier and calculates tenure and charge averages to test for correlation.

SELECT 
CASE 
WHEN SupportTicketsPerMonth > 3 THEN 'High Friction' 
ELSE 'Low Friction' 
END AS risk_segment,
COUNT(CustomerID) AS total_customers,
ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charges,
ROUND(AVG(AccountAge), 2) AS avg_account_age
FROM `bionic-path-489705-d6.PulseFlow_Health_Tech.churn_audit_raw`
WHERE Churn = 0 AND SubscriptionType = 'Premium'
GROUP BY risk_segment;
