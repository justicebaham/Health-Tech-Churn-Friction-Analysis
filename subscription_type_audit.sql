-- PURPOSE: Perform an initial audit of active patients across all subscription tiers.
-- BUSINESS GOAL: Identify which segment contains the highest volume of active users to prioritize for friction analysis.

SELECT 
SubscriptionType,
ROUND(AVG(SupportTicketsPerMonth), 2) AS avg_monthly_support_tickets,
COUNT(CustomerID) AS active_patients,
ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charge
FROM `bionic-path-489705-d6.PulseFlow_Health_Tech.churn_audit_raw`
WHERE Churn = 0
GROUP BY SubscriptionType;
