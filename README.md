# HR-Analytics-Project

![](hr_logo.avif)

## Introduction:

With the background understanding that losing employees frequently influence the morale of the organization and hiring new employees is more expensive than keeping existing ones. Hence, this project focuses on data 

analysis of human resources. Different data management and analytics skills used to start from data acquisition from multiple HR sources, merging, exploring and deriving new features, building three dashboards to 

solve business questions to bring an actionable insight from the data to enhance potential retention strategy.

The three dashboards focus on:

 1 Workforce Composition Dashboard.

i.	Understand Workforce Demographics: This dashboard provides a clear picture of your team’s composition by visualizing key demographics such as age, gender, location, department, and job level.

ii.	Spot Representation Gaps: It highlights any imbalances in workforce representation across various categories, helping to inform and prioritize diversity, equity, and inclusion (DEI) efforts.

2. Employee Turnover Dashboard.
   
i.	Analyze Turnover Rates: Gain insights into overall and segmented turnover patterns across departments, locations, generations, and job levels to pinpoint areas needing attention.

ii.	Predict Future Trends: Leverage historical data to identify patterns and anticipate turnover trends, allowing for proactive workforce planning and intervention.

3.	Employee Satisfaction and Engagement Dashboard.
   
i.	Gauge Employee Sentiment: This dashboard captures how employees feel about critical areas like work-life balance, career growth, and job performance, making it easier to identify areas for improvement.

ii.	Foster a Positive Culture: By tracking engagement trends, you can implement strategies that enhance employee satisfaction, boost productivity, and strengthen retention efforts.

However it is assumed that survey cas carried out for members of the management staff.

**_Disclaimer: This project was created using a dataset from DataCamp, designed to support learning and skill development. The insights and findings are meant to showcase analytical techniques._**


## Problem Statement:

i.	Without a clear and detailed understanding of workforce demographics, the organization finds it difficult to identify gaps in representation across factors like age, gender, location, and job levels. This lack of 

insight hampers efforts to design and execute targeted diversity, equity, and inclusion (DEI) strategies.

ii.	The organization is unable to detect high turnover rates within specific departments, locations, or employee groups due to a lack of detailed tracking and forecasting. This gap in analysis prevents the business 

from addressing root causes and implementing effective retention measures.

iii.	Limited insight into employee satisfaction and engagement—particularly in areas like work-life balance, career development, and performance feedback—makes it difficult for the organization to act on employee 

concerns. This results in lower morale, reduced efficiency, and higher attrition rates.

## Data Description and Preparation:

The datasets were obtained from three different excel sheets in .csv extension which were named as follows and their fields included: 

i.	Org.csv sheet (14 columns 2291 rows) with variables (emp_id, status, turnover, location, level, date_of_joining, date_of_birth, last_working_date, gender, department, mgr_id, cutoff_date, generation, emp_age)

ii.	Survey.csv( 5 columns 350 rows) sheet having fields (mgr_id, mgr_effectiveness, career_satisfaction, perf_satisfaction, work_satisfaction)

iii.	Rating.csv (2 columns 1954 eows) having fields ( emp_id, rating)

Postgresl was used to join clean and join the datasets using the appropriate primary keys.

### SQL Process for the Combined Three Tables
_You can view the postgresql code from this link_ [org_joined_sql.sql](org_joined_sql.sql)

![](hr_joining_tables.pdf)
 
 ### SQL Process for Cleaning the Org Table
![](org_cleaned_sql.sql)

 

FEATURE ENGINEERING:
Data in each excel sheet was efficiently cleaned in Postgresql and several data aggregations were performed and generated using Tableau in line with the business questions at hand to be answered: These are listed below:
i.	Tenure	ii. Avg. Tenure	 iii. Turnover Count	iv. Turnover Rate	v. Headcount 	vi. Retention Rate	vii. Age	 viii. Duration of Employee Tenure viii. Age Group

SKILLS/CONCEPT DEMOSTRATED:
Here’s a comprehensive breakdown of technical skills displayed in this scenario, categorized by key areas:
i.	SQL & Database Management
   -Writing complex SQL queries 
    -Performing data cleaning with SQL 
    -Implementing table joins 
    -Creating derived columns and calculated fields in SQL.
    -Designing and implementing relational database models (primary/foreign keys).
    -Loading and managing datasets in PostgreSQL.

ii.	Data Preparation
    -Data wrangling for consistency and readiness.
   -Handling missing data and outliers.
    -Data normalization and aggregation.
    -Designing logical data models for analysis.
iii. Data Visualization & Analysis
    -Connecting Tableau to PostgreSQL databases.
    -Creating calculated fields and hierarchies in Tableau.
    -Designing dashboards with interactive filters, tooltips, and drill-downs.
    --Selecting appropriate chart types:
   - Formatting visualizations for clarity and impact.
    -Using KPIs to summarize performance metrics.

iv.	Insight Generation
-Analyzing trends, patterns, and outliers.
 -Identifying actionable insights from visualizations.
  -Using data to answer business questions and solve problems.
v. Reporting & Storytelling
-Writing clear, concise, and professional reports.
  -Summarizing key insights and recommendations.
   -Structuring findings to align with business objectives.
    -Presenting insights effectively to stakeholders.

vi.	Additional Technical Skills
-Data modeling and schema design.
 -Creating and managing relationships between datasets.
-Proficiency in tools: PostgreSQL and Tableau.
Visualization:
1. Workforce Composition
2. Employee Turnover
3. Employee Satisfaction and Engagement
You can interact with the dashboard here ![](tableau public)

ANALYSIS:
Image of Workforce Composition ![](tableau public)
Workforce Composition:
Findings:
1. Retention Patterns by Demographics:
The overall retention rate is 82.14%. Analysts have the highest retention rate (66.93%), and males have the highest retention rate (69.01%) among gender categories.
Staff aged 65 and above show the highest retention rate compared to other age groups.
2. Tenure and Location Insights:
Average tenure across the organization is 4.23 years.
Staff in Florida have the longest length of service, indicating better engagement and stability in this location.

Image of Employee Turnover  ![](tableau public)
Employee Turnover:
Findings:
1. High Turnover Among Millennials and Analysts:
Millennials exhibit the highest turnover rate (90.95%), and Analysts have the highest turnover among roles (84.11%).
2. Geographic and Demographic Trends:
Chicago has the highest location-based turnover rate (32.56%), while Florida has the lowest (10.55%). Male staff turnover (69.68%) significantly surpasses female turnover (30.32%).

Image of Employee Satisfaction and Engagement  ![](tableau public)
Employee Satisfaction & Engagement:
Findings:
1. Role and Location Satisfaction:
Analysts in Florida report the highest job satisfaction, followed by those in New York. Career satisfaction in Florida, Chicago, and New York is positively correlated with manager effectiveness.
2. Generational Performance Trends:
Millennials show the highest performance satisfaction across locations, and Analysts in this generation report the highest work satisfaction (74.93%).




