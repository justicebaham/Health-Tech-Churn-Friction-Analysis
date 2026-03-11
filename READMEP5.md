**Project 5: Health Tech Churn \& Friction Audit**

**Project Overview:** A strategic analysis of patient friction and revenue risk using SQL segmentation and data visualization to identify critical "Danger Zone" thresholds for high-value Premium subscribers.



**Problem:**

The business needed to find the risk segment of patients with the Premium subscription, which accounts for a large portion of revenue.



**Action:**

* **The Initial Audit:** Used an SQL query with the COUNT function to identify which subscription type had the highest total, including a WHERE clause to ensure it only returned active patients.
* **Revenue Risk:** Created an SQL query to utilizing the SUM function to get a total for at risk patients and the total revenue at risk.
* **Comparative Segmentation:** Executed a SQL query utilizing the CASE function to group those active patients into High vs Low Friction groups, then calculated the total customers, average monthly charges, and average account age for each group.
* **Visualization:** Migrated the final dataset to Connected Sheets to create a 2 side by side column charts to create easy-to-read visuals.



**Result:**

* **The Volume:** Identified the subscription type with the highest total number of active patients was the Premium tier.
* **Financial Exposure:** Identified the total revenue at risk to be $487,289.71.
* **The Loyalty Paradox:** Recognized that the average account age for patients in the High Friction was around 63 months, showing that the patients having the most issues are long-term veterans. Which signifies that there could be a deeper issue.
* **The Friction Groups:** Discovered there were 11,532 more patients in the High Friction category compared to the Low Friction Category.
* **Strategic Recommendation:** Based on the fact there is only a 2 cent difference in average monthly charges between the High and Low Friction groups, the company should look at the type of support tickets the patients are filing to see what changed in the software or what the technical issues are.















**Tools Used:**

* **SQL (BigQuery):** Data extraction and aggregation.
* **Google Sheets (Connected Sheets):** Data transformation.
* **Data Visualization:** Column Charts with clear labels.









[Project 5 Google Sheet](https://docs.google.com/spreadsheets/d/1PeWNkH80KjMfE14v_rrREwe_QTQgitUsmXsREcmzV2w/edit?usp=sharing)

