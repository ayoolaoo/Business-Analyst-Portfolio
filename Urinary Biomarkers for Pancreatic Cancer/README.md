## R Programming Analysis Summary Report
[Key Visualisation Figures](https://github.com/ayoolaoo/Business-Analyst-Portfolio/tree/main/Urinary%20Biomarkers%20for%20Pancreatic%20Cancer/Figures)

[R Markdown](https://github.com/ayoolaoo/Business-Analyst-Portfolio/edit/main/Urinary%20Biomarkers%20for%20Pancreatic%20Cancer/Urinary%20Biomarkers%20for%20Pancreatic%20Cancer.Rmd)

#### Goal: To explore urinary and plasma biomarkers associated with pancreatic cancer and identify how biomarker levels vary across diagnosis groups, disease stages, sample origins, and patient cohorts.

#### Overview: This project analyzes urinary biomarker data from Debernardi et al. (2020) to examine biological and clinical patterns associated with pancreatic cancer. The analysis integrates patient demographics, clinical variables, and multiple urinary and plasma biomarkers to understand differences between control, benign, and pancreatic ductal adenocarcinoma (PDAC) patients. The goal is to summarize biomarker behavior, assess missingness and data completeness, and generate interpretable visual insights using a fully reproducible R workflow.

#### Workflow Summary This project follows a structured, end-to-end analytical workflow implemented in R and R Markdown.

1. **Data Import & Initial Review**: Loaded urinary biomarker and documentation datasets using readr, Assessed dataset structure, variable types, and overall missingness, Evaluated missing values globally and by column. 

2. **Data Cleaning & Variable Preparation**: Converted diagnosis codes into labeled categorical factors (Control, Benign, PDAC), Converted sex, stage, and benign diagnosis variables into factors, Ordered cancer stage variable to reflect clinical progression, Verified factor conversions using structure and frequency checks,
  
3. **Missing Data Assessment & Feature Engineering**: Created binary completeness flags for key clinical and biomarker variables (stage, benign diagnosis, plasma CA19-9, REG1A), Grouped missingness summaries by diagnosis and sample origin to identify patterns in data availability

4. **Exploratory Summary Statistics**: Computed mean, median, and standard deviation for key urinary biomarkers (LYVE1, REG1B, REG1A, TFF1) by diagnosis, Summarized age and creatinine distributions across diagnosis groups, Identified the most common benign diagnoses among benign samples

5. **Visualization & Comparative Analysis** : Created boxplots to compare biomarker distributions across diagnosis groups, Used faceted plots to visualize multiple biomarkers simultaneously, Examined biomarker behavior across disease stages in PDAC patients only, Compared biomarker levels across sample origins and patient cohorts, Visualized age and creatinine distributions using boxplots, density plots, and bar charts

6. **Correlation & Pattern Analysis**: Computed Pearson correlation matrix across biomarkers and creatinine, Visualized correlation structure using heatmaps to identify relationships between biomarkers

### Key Analyses & Visual Insights

#### 1. Evaluated biomarker distributions across diagnosis groups 
Boxplots showed clear differences in urinary biomarker levels between Control, Benign, and PDAC patients
Faceted visualizations allowed direct comparison of multiple biomarkers while accounting for different value ranges

#### 2. Assessed disease progression effects in PDAC patients
Average biomarker levels were computed across ordered cancer stages
Stage-level bar charts highlighted trends in biomarker expression as disease severity increased

#### 3. Examined demographic and clinical covariates
Age distributions differed across diagnosis groups, with PDAC patients skewing older
Creatinine levels varied modestly by diagnosis, supporting its role as an important normalization and covariate variable

#### 4. Compared biomarker levels across sample origin and cohort
Biomarker averages differed by sample origin, indicating potential site or processing effects
Plasma CA19-9 distributions varied by diagnosis and patient cohort, with higher values concentrated in PDAC patients

#### 5. Identified relationships among biomarkers
Correlation analysis revealed moderate to strong relationships among select urinary biomarkers
Heatmap visualization supported multivariate interpretation and potential biomarker panel behavior


### Key Insights (High-Level Takeaways)

1. Urinary biomarker levels differ by diagnosis group:Multiple biomarkers (LYVE1, REG1B, REG1A, TFF1) show distinct distribution patterns between Control, Benign, and PDAC patients.

2. Disease stage influences biomarker behavior in PDAC patients: Average biomarker levels vary across ordered cancer stages, suggesting potential associations with disease progression.

3. Missingness is not uniform across patient groups: Certain biomarkers and clinical variables are more frequently missing in specific diagnosis and sample-origin categories, highlighting the importance of completeness checks.

4. Sample origin and cohort affect biomarker measurements: Differences in biomarker averages across sample origins and cohorts suggest potential technical or population-level effects that must be considered in downstream analysis.

5. Biomarkers exhibit correlated behavior: Correlation analysis indicates that some urinary biomarkers move together, supporting the concept of biomarker panels rather than single-marker interpretation.


#### Skills
Data cleaning and preprocessing: Categorical variable encoding and ordering, Missing data analysis and completeness flagging, Grouped summary statistics, Data reshaping (wide-to-long format), Exploratory data analysis (EDA), Data visualization with ggplot2, Faceted and multi-panel plotting, Correlation analysis and heatmap visualization, Reproducible analysis using R Markdown, Scientific data interpretation and reporting

#### Tools
R
