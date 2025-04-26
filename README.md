# Student_performance_Analysis

## Project Overview 
This project analyzes students' exam performances based on various demographic, socio-economic, and educational factors. Using Exploratory Data Analysis (EDA),visualizations and statistical method we uncover insights about what influences academic outcomes.

The dataset contains scores in three subjects: Math, Reading, and Writing, along with attributes like gender, race/ethnicity, parental education, lunch type, and test preparation.

## Project Workflow 
## Data Loading and Preprocessing:
Cleaning and preparing the dataset for analysis.

## Exploratory Data Analysis (EDA): 
Understanding data distributions, relationships between variables, and basic trend discovery.

## Statistical Analysis:
Applying statistical methods like correlation analysis, mean/median/mode calculations, hypothesis testing, and group comparisons to validate observed patterns.

## Data Visualization:
Using graphical met

## Dataset Details 

| Column Name | Description |  
|-------------|-------------|  
| gender | Student's gender (male/female) |  
| race/ethnicity	| Group of the student (A, B, C, D, E)|  
| parental level of education | Highest education level of parents |  
| lunch	 | Standard or free/reduced lunch |  
| test preparation course	 | Completed or not completed |  
| math score |	Math exam score (0-100) |  
|reading score | 	Reading exam score (0-100)|  
| writing score | Writing exam score (0-100)|  

## Files in the Repository

| File Name | Description |  
|-------------|-------------|  
| StudentPerformance.csv|Original dataset containing student demographic details and exam scores. |  
| cleaned_student_data.csv | Dataset after cleaning (null removal, formatting corrections, etc.).|  
| DataCleaning.ipynb  | Jupyter Notebook for data cleaning and preprocessing steps.|  
| EDA_Matplotlib.ipynb | Exploratory Data Analysis (EDA) and visualizations using Matplotlib library.|
| EDA_Seaborn.ipynb | Exploratory Data Analysis (EDA) and visualizations using Seaborn library.|
| Students_Performance_Analysis.ipynb | End-to-end project notebook combining data loading, cleaning, EDA, and basic insights.|
| Statistics.ipynb | Basic statistical operations like mean, median, mode, standard deviation, etc.|
| Statistics_Analysis.ipynb | Deep statistical analysis including hypothesis testing and correlation study.|
| SQL_Insights.sql | SQL queries for deriving insights from the student performance data stored in SQL tables.
| Students_performance.sql | SQL script to create database and tables for storing student performance data.|
| ER_Diagram.png | Entity-Relationship Diagram showing the database structure for the project.|
| README.md | Project documentation explaining the dataset, workflow, files, and insights.|

## How to Run the Project 

### 1. Data Cleaning
Run DataCleaning.ipynb to clean the raw dataset (StudentsPerformance.csv) and save it as cleaned_student_data.csv.

### 2. Load Data into SQL (Optional - For SQL Analysis)
Create a database and table using Students_performance.sql.
Import the cleaned_student_data.csv into your SQL database.

### 3. SQL Analysis
Run queries in SQL_Insights.sql to generate SQL-based insights, such as:
Average scores based on gender or parental education
Top-performing students
Subject-wise performance analysis
Group-based performance comparisons

### 4. Statistical Analysis
Run Statistics.ipynb and Statistics_Analysis.ipynb in Jupyter Notebook to:
Calculate mean, median, mode, standard deviation
Perform hypothesis testing and correlation studies

### 5. Exploratory Data Analysis (EDA)
Run EDA_Matplotlib.ipynb to explore the data using Matplotlib visualizations.
Run EDA_Seaborn.ipynb to explore the data using Seaborn visualizations.

## Insights from Analysis 

### 1. Gender-Based Performance  
- Female students generally performed better than male students in all subjects.  

### 2. Parental Education and Performance  
- Students with more educated parents tended to score higher, especially in writing and reading.

### 3. Subject-Wise Performance  
- Writing scores were the highest on average, while Mathematics had the lowest average scores.

### 4. Distribution of Scores  
- The distribution of scores showed most students scored in the middle range, with a few outliers in high and low scores.

### 5. Performance Correlations  
- Strong positive correlation between reading and writing scores, while Mathematics had a weaker correlation with other subjects.

## Project Submission
GitHub Repository: [Student_performance_Analysis]([https://github.com/sangeetha077/Student_performance_Analysis]) 

## Contributors
- Sangeetha Thangam
- Mahesh Mahato









