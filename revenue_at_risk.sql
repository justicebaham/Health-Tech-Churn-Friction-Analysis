-- PURPOSE: Quantify the total financial exposure within the "High Friction" Premium segment.
-- LOGIC: Filters for active Premium users exceeding the established friction threshold of >3 support tickets/month.

SELECT 
COUNT(CustomerID) AS total_at_risk_patients,
ROUND(SUM(MonthlyCharges), 2) AS total_revenue_at_risk,
ROUND(AVG(AccountAge), 1) AS avg_months_tenure
FROM `bionic-path-489705-d6.PulseFlow_Health_Tech.churn_audit_raw`
WHERE Churn = 0 
AND SubscriptionType = 'Premium'
AND SupportTicketsPerMonth > 3;
