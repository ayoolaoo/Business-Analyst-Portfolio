# Ayoola Okoro- Business Analyst Portfolio


## About
Business Analyst with international experience, specializing in data analysis, stakeholder engagement, and cross-functional collaboration. Experienced in translating complex business needs into clear requirements, actionable insights, and measurable deliverables. Proven ability to support data-driven decision-making, process improvement, and strategic initiatives in fast-paced, regulated environments.


## Table of Contents
- [About](#about)

- [Portfolio Projects](#portfolio-projects)

  - SQL
 	- [Hospital Management Dataset](#Hospital-Management-Dataset)
	- [Bike Sales Data Exploration](#Bike-Sales-Data-Exploration)
 
  - PowerBI
 	  - [Bike Sales Dashboard (PowerBI)](#Bike-Sales-Dashboard-PowerBI)
   
  - Tableau
    -  [Bike Sales Dashboard (Tableau)](#Bike-Sales-Dashboard-Tableau)
  - Excel
    - [Healthcare Dataset Analysis](#Healthcare-Dataset-Analysis)  
  - R progamming
    - [Urinary Biomarkers for Pancreatic Cancer](#Urinary-Biomarkers-for-Pancreatic-Cancer)


## Portfolio Projects
This section contains a list of completed projects as well as a brief descritpion of each project


## Hospital Management Dataset
**Code**: [Hospital Management Dataset.sql](https://github.com/ayoolaoo/Business-Analyst-Portfolio/blob/main/Hospital%20Management%20Dataset.sql)

**Goal**: To analyze hospital operations by integrating patient, doctor, appointment, treatment, and billing data. The project focuses on understanding patient flow, doctor workload, treatment costs, and revenue patterns through multi-table joins, aggregations, and analytical SQL techniques.

**Description**: This project uses a multi-table hospital management dataset and performs end-to-end SQL analysis. Steps include exploring and joining relational tables (patients, doctors, appointments, treatments, billing), performing group-by aggregations, analyzing doctor performance and patient activity, evaluating revenue sources, and using window functions and subqueries to answer operational and financial questions. The analysis reveals insights into appointment trends, treatment frequency, revenue distribution, and healthcare service utilization.

**Skills**: SQL Joins (INNER, LEFT), Multi-Table Joins, Aggregations (SUM, COUNT, AVG), Window Functions (ROW_NUMBER), Subqueries (scalar & IN), Grouped Analysis, Analytical SQL.

**Technology**: MySQL


## Bike Sales Data Exploration
**Code**: [Bike Sales Data Exploration.sql](https://github.com/ayoolaoo/Business-Analyst-Portfolio/blob/main/Bike%20Sales%20Data%20Exploration.sql)

**Goal**: To clean, transform, and analyze a retail bike sales dataset by creating normalized tables, joining data sources, performing aggregations, ranking results, and using subqueries to answer business questions about revenue, customers, and product performance.

**Description**: This project uses a raw bike sales dataset and performs end-to-end SQL processing. Steps include Data Loading, creating new tables, altering and populating columns, splitting a flat table into customer and sales tables, joining datasets, performing group-by aggregations, applying window functions for top-N analysis, and using scalar and IN-subqueries for deeper insights. The analysis helps uncover revenue trends across countries, customer demographics, and product categories.

**Skills**: DDL (ALTER TABLE, CREATE TABLE), DML (INSERT, UPDATE), Joins (INNER, LEFT, FULL via UNION), Window Functions, Aggregations, Subqueries, Data Cleaning, Analytical SQL.

**Technology**: MySQL



## Bike Sales Dashboard (PowerBI)
**Goal**: To analyze European bike sales to gain insights into the revenue patterns, profit performance, and category-level contributions.

**Summary**: This project delivers an interactive Power BI dashboard featuring six KPI cards, revenue and profit analysis by country, time-series revenue trends, and product category insights. It highlights year-over-year changes and overall business performance.

**Skills Used**: Power Query data cleaning, DAX measure creation, data modeling, KPI design, and visual analytics.

**Technologies**: Power BI Desktop, Power Query, DAX

**Folder**: [Bike-Sales-Dashboard](https://github.com/ayoolaoo/Business-Analyst-Portfolio/tree/main/Bike-Sales-Dashboard)


## Bike Sales Dashboard (Tableau)
**Goal:** To visualize bike sales trends across demographics, geography, and product categories using an interactive Tableau dashboard.

**Description:** This dashboard presents key insights into bike sales performance, including revenue distribution, customer demographics, product category comparisons, and purchasing patterns. Interactive visual elements such as filters, drill-down views, bar charts, line charts, and KPI cards allow stakeholders to explore sales behavior across different customer segments and regions.

**Skills:** Data visualization, dashboard design, KPI creation, drill-down analysis, data storytelling.

**Technology:** Tableau

**Folder**: [Bike-Sales-Dashboard (Tableau)](https://github.com/ayoolaoo/Business-Analyst-Portfolio/tree/main/Bike%20Sales%20Dashboard%20(Tableau))


## Healthcare Dataset Analysis

**Goal:** To analyze hospital patient records in Excel to uncover key cost drivers, clinical patterns, admission behaviors, and utilization trends, and identify the patient groups and visit types contributing most to overall healthcare spending.

**Description:** This project uses a synthetic hospital dataset and performs end-to-end Excel analysis, including data cleaning, transformation, segmentation, pivot-table modeling, calculated metrics, and interactive dashboard design. The dashboard visualizes patient demographics, medical conditions, billing patterns, test result distributions, and length-of-stay impacts, enabling stakeholders to quickly understand cost drivers and operational performance.

**Skills:** Data Cleaning & Wrangling, Pivot Tables, Lookup Functions (XLOOKUP, VLOOKUP), Aggregations (SUMIF, AVERAGEIF, COUNTIF), KPI Design, Data Visualization (bar, pie, gauge, stacked charts), Dashboard Building, Insight Generation, Healthcare Cost Analysis.

**Technology:** Microsoft Excel

**Folder**: [Healthcare-Dataset-Analysis](https://github.com/ayoolaoo/Business-Analyst-Portfolio/tree/main/Healthcare%20Dataset)


## Urinary Biomarkers for Pancreatic Cancer

**Goal:** To explore and summarize urinary and plasma biomarkers associated with pancreatic cancer by analyzing clinical, demographic, and biomarker data, and to identify patterns across diagnosis groups, disease stages, and sample origins.

**Description:** This project analyzes a pancreatic cancer biomarker dataset from Debernardi et al. (2020) using R. The workflow includes data import and validation, missing-value assessment, variable type conversion, and feature engineering to create completeness indicators for key clinical and biomarker variables. Exploratory data analysis is performed to examine biomarker distributions, demographic characteristics, and clinical attributes across diagnosis groups (Control, Benign, PDAC).
 The analysis computes group-wise summary statistics (mean, median, standard deviation) for multiple urinary biomarkers (LYVE1, REG1B, REG1A, TFF1), creatinine, and age, stratified by diagnosis, disease stage, sample origin, and patient cohort. Visualization techniques such as boxplots, density plots, stacked bar charts, faceted plots, and correlation heatmaps are used to compare biomarker behavior across clinical subgroups and to assess relationships between biomarkers and covariates. The entire analysis is organized in a reproducible R Markdown workflow.

**Skills:** Data Cleaning & Quality Assessment, Missing Data Analysis, Feature Engineering, Exploratory Data Analysis (EDA), Grouped Aggregations, Summary Statistics, Data Reshaping (long vs wide format), Data Visualization, Faceted Plotting, Correlation Analysis, Reproducible Reporting, Debugging & Workflow Organization.

**Technology:** R, R Markdown, tidyverse (dplyr, tidyr, readr), ggplot2, corrplot, knitr

**Folder**: [Urinary-Biomarkers-for-Pancreatic-Cancer](https://github.com/ayoolaoo/Business-Analyst-Portfolio/tree/main/Healthcare%20Dataset)
