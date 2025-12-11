## Excel Analysis Summary Report
[Healthcare Dashboard Screenshot](https://github.com/ayoolaoo/Business-Analyst-Portfolio/blob/main/Healthcare%20Dataset/Healthcare%20Dashboard%20Screenshot.png)

[Healthcare Dataset — Excel workbook](https://github.com/ayoolaoo/Business-Analyst-Portfolio/blob/main/Healthcare%20Dataset/Healthcare%20dataset%20Workbook.xlsx)

### Goal
To analyze patient records to uncover cost patterns, medical conditions, billing behaviors, and service utilization, and identify the visits and patient groups driving the highest costs and longest stays.

### Overview
This analysis summarizes key operational and financial metrics from a healthcare dataset containing patient demographics, admissions, diagnoses, billing amounts, and test results.
The goal is to understand patient mix, cost drivers, and clinical patterns across different patient groups.

### Workflow Summary

This project follows a structured, end-to-end analytics workflow, including data import, cleaning, feature engineering, pivot-based exploration, dashboard design, and operational insight generation.

1. Data Import & Review

Loaded healthcare dataset into Excel

Verified column types and removed duplicate patient-visit entries

Checked for missing or inconsistent values

2. Data Cleaning

Standardized text fields (TRIM, CLEAN, PROPER)

Corrected numeric formats for billing, dates, and ages

Created Length of Stay (LOS) column

Added billing flags (High Billing, LOS Flag)

Categorized patients into Age Groups

3. Feature Engineering

High Billing indicator (75th percentile threshold)

Long vs Short Stay flags

Per-Day Billing calculation

Created lookup tables for drugs and insurance types

4. Analytical Pivot Tables

Billing by Medical Condition

Gender Distribution

Admission Type Analysis

Test Results by Age Group

Billing by Length of Stay

Top 10 Most Expensive Visits

5. Dashboard Development

Built KPI cards

Created interactive Pivot Charts

Designed a clean, business-style dashboard layout

Added contextual insights beneath each visual

6. Interpretation & Insights

Identified key cost drivers

Compared patient groups and visit types

Highlighted trends in billing, LOS, and clinical outcomes

Evaluated operational patterns across demographics and diagnoses
1. Patient Gender Distribution (%)
Chart: Pie chart showing male vs female proportions.
Goal: To understand gender representation in hospital visits.
Insight: The patient population is evenly distributed between males and females (about 50/50), showing no gender dominance in hospital utilization.

2. Sum of Billing Amount Per Day by Age Group
Chart: Column chart comparing total billing per day across Young, Adult, and Senior groups.
Goal: Identify age groups with the highest daily cost burden.
Insight: Adults show the highest total daily billing ($15M), followed by Seniors ($13M). Young patients have significantly lower daily billing ($6M), indicating that healthcare spending is most concentrated in the Adult and Senior populations.

3. Test Result Distribution by Age Group (100% Bar Chart)
Goal: Show how test outcomes vary across age groups.
Insight: Seniors have the highest share of abnormal test results (51.1%), while the Young group has the highest share of normal results (50.72%). This suggests a potential association between age and abnormal clinical findings.

4. Average Billing by Medical Condition (Bar Chart)
Goal: Compare average billing across different medical conditions.
Insight: Asthma has the highest average billing ($26,085.84), while Diabetes has the lowest ($25,197.53).
Because the differences are small, condition type does not strongly drive billing variation; costs appear more influenced by individual patient factors such as length of stay and type of admission.

5. Billing Amount by Length of Stay (Gauge View)
Goal: Highlight cost difference between Long Stay and Short Stay visits.
Insight: Long-stay visits account for ~83% of total billing, compared to ~17% for Short Stay.
This confirms that Length of Stay is one of the strongest drivers of hospital cost, with long stays costing roughly 5× more than short stays.

6. Top 10 Most Expensive Visits (Table)
Goal: Identify highest-cost individual visits to spot spending outliers and major contributors to total billing.
Insight: The top 10 visits alone contribute a disproportionately high share of total billing, indicating that a small number of severe cases heavily drive hospital revenue.

7. Billing by Admission Type (Top 10 Visits Only)
Chart: Bar chart showing billing for the top 10 visits categorized by Admission Type.
Goal: Understand which types of admissions generate the highest costs in the most expensive cases.
Insight:
Urgent admissions contribute the highest share of total billing among the top 10 visits, followed closely by Emergency admissions.
Elective admissions contribute the least, indicating that unplanned, high-acuity cases (urgent/emergency) dominate extreme-cost visits.

### Tools Used: Microsoft Excel

### Technologies / Skills Demonstrated
- Data cleaning & wrangling
- Lookup functions (XLOOKUP, VLOOKUP)
- Aggregations (SUMIF, AVERAGEIF, COUNTIF, IF)
- Table modeling in Excel
- Pivot table analytics
- Dashboard design & KPI reporting
- Data visualization (bar, pie, gauge, 100% stacked, custom charts)
- Insight generation from healthcare data
- Business analyst reporting & storytelling
- Healthcare cost analysis and patient segmentation


### Key Insights (High-Level Takeaways)
1. Length of Stay is the strongest driver of cost. Long-stay patients account for ~83 percent of total billing, making them roughly 5× more expensive than short-stay visits.
2. Medical condition does not significantly affect billing. Average billing across conditions was very similar, suggesting that individual patient complexity matters more than diagnosis category alone.
3. Adults incur the highest average billing per day. Adults generate higher daily billing compared to young and senior groups, indicating greater treatment intensity.
4. Abnormal test results are most common in seniors. Seniors had the highest proportion of abnormal results, showing a clear age-related increase in diagnostic risk.
5. High-cost visits are dominated by urgent/emergency admissions. Among the top 10 most expensive visits, urgent and emergency admissions contribute the most while elective cases contribute the least, suggesting  high-severity, unplanned visits drive most extreme hospital costs.


