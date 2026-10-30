                            Layoff Dataset – Data Cleaning Using MySQL
PROJECT OVERVIEW

This project focuses on cleaning and preparing a layoffs dataset using MySQL. The objective was to improve data quality by identifying duplicate records, standardizing inconsistent values, handling missing data, and preparing the dataset for further analysis.

          Tools & Technologies
MySQL

SQL

Common Table Expressions (CTEs)

Window Functions

Self-Joins

DATASET--
The project uses a company layoffs dataset containing approximately 2,500 records.

    Data Cleaning Process
1. Creating Staging Tables--
   
     1) Created staging tables using CREATE TABLE LIKE.

     2) Copied raw dataset records into staging tables to preserve the original data.

2. Removing Duplicate Records--
   
     1) Used ROW_NUMBER() with PARTITION BY to identify potential duplicates.

     2) Used a CTE and a separate staging table to isolate duplicate records.

     3) Removed records identified as duplicates.

3. Standardizing Data--
   
     1) Used TRIM() to remove unwanted spaces from company names.

     2) Standardized inconsistent industry values.

     3) Standardized country names.

4. Handling Date Formats--
   
     1) Converted text-based dates into SQL date values using STR_TO_DATE().

     2) Modified the date column to the DATE data type.

5. Handling Missing Values--
    
     1) Identified records with missing layoff information.

     2) Converted blank industry values into NULL.

     3) Used self-joins to populate missing industry values where matching company information was available.

6. Final Cleanup--
    
     1) Removed unnecessary columns using ALTER TABLE.

     2) Reviewed the cleaned dataset.

     3) SQL Concepts Practiced

     4) SELECT and WHERE

     5) CREATE TABLE and INSERT INTO

     6) UPDATE and DELETE

     7) ALTER TABLE

     8) Common Table Expressions (CTEs)

     9) Window Functions (ROW_NUMBER)

     10) String Functions (TRIM)

     11) Pattern Matching (LIKE)
 
     12) Date Functions (STR_TO_DATE)

     13) Self-Joins

    OUTCOME
Prepared a cleaner and more consistent layoffs dataset for further data analysis.


SQL project--
- https://github.com/sudhanshuy397-collab/DATA-ANALYST/blob/main/portfolio%20projects/1.(SQL)%20data%20cleaning.sql
