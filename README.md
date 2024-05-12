# Kimia Farma Big Data Analytics Project-Based Internship Program
This repository is the final project of the Big Data Analytics internship project at Rakamin Academy, in collaboration with Kimia Farma.

 #### The repository contains:
- SQL Data Mart Creation: A SQL query to create an Analysis Table Data Mart, following predefined specifications.
- Performance Analytics Dashboard: A dashboard visualizing the performance analytics of Kimia Farma's business from 2020 to 2023.

Through this repository, stakeholders and collaborators can access and review the analytical findings, SQL scripts, and visualization tools used in assessing Kimia Farma's business performance during the specified period.

 #### Key Features:
- SQL Data Mart creation scripts for structured data analysis.
- Performance Analytics Dashboard for visualizing business performance trends.
- Organized repository structure for easy navigation and collaboration.


## A. Introduction
As a Big Data Analytics intern at Kimia Farma, I've had the opportunity to evaluate Kimia Farma's business performance from 2020 to 2023. This task requires a deep understanding of data and analytical capabilities, along with technical skills in SQL querying and dashboard analytics development. Focused on implementing Big Data solutions, this project aims to provide valuable insights for strategic decision-making within the pharmaceutical and healthcare technology industry.


## B. Dataset
The dataset consists of four main tables:
1. **kf_final_transaction**: This table contains information about the last transaction performed. Each row represents one transaction and includes details such as transaction ID code, product ID, branch ID, customer name, transaction date, product price, discount percentage, and customer rating of the transaction.
        <img align="center" width="800" alt="kf_final_transaction" src="https://github.com/Rezikadamayanti/Archival-Documentation-Project/assets/72129326/ef09b558-472b-46fc-b6d4-2f2caf38f9c4">

2. **kf_inventory**: This table stores information about the inventory of medicinal products in each Kimia Farma branch. This includes inventory ID, branch ID, product ID, product name, and the number of medicinal product stocks available at each branch.
        <img align="center" width="800" alt="kf_inventory" src="https://github.com/Rezikadamayanti/Archival-Documentation-Project/assets/72129326/cf91cc1c-be17-4e45-ad1b-c4c92b805af3">

3. **kf_kantor_cabang**: This table contains information about Kimia Farma branch offices. Each row includes details such as branch ID, branch category, branch name, branch city, branch province, and customer rating of the branch.
        <img align="center" width="800" alt="kf_kantor_cabang" src="https://github.com/Rezikadamayanti/Archival-Documentation-Project/assets/72129326/166afe77-2c9a-486f-af36-39e4116430e2">
   
4. **kf_product**: This table contains information about medicinal products sold at Kimia Farma. Each row includes details such as product ID, product name, product category, and product price.
         <img align="center" width="800" alt="kf_product" src="https://github.com/Rezikadamayanti/Archival-Documentation-Project/assets/72129326/e293cecc-105d-4b52-88e2-1a6b75e0865f">


## C. Create and analyze Data Mart: Analysis Tables
The requirements for creating a Data Mart named Analysis Table have been provided. This Analysis Table consists of 16 columns. Query creation involves analyzing each table in the 'rakamin-kf-analytics-422902' project and listing them in the chemical-pharma database previously created in Google BigQuery. The following query yields results in the form of a Data Mart, namely 'Analysis Table'.
- [Query Data Mart - Analysis Table](https://github.com/Rezikadamayanti/Kimia-Farma-PBI-BigDataAnalytics/blob/main/Query%20DM%20-%20Analysis%20Table.sql)<br>
- [Google BigQuery - Analysis Table](https://console.cloud.google.com/bigquery?sq=516129896092:caf01154b224482ba6a591bd3af72352) <br>

    <img align="center" width="800" alt="query" src="https://github.com/Rezikadamayanti/Archival-Documentation-Project/assets/72129326/072cbad0-0663-4ad5-9ff4-0a1f10eea694">
    <img align="center" width="800" alt="query2" src="https://github.com/Rezikadamayanti/Archival-Documentation-Project/assets/72129326/43cbc511-ab75-4194-9ec0-8a3462ff100f">


## D. Exploratory Data Analysis (EDA) and Dashboards
The process of conducting Exploratory Data Analysis (EDA) and creating dashboards was carried out using Google BigQuery and Looker Studio.
- [Google BigQuery - EDA](https://console.cloud.google.com/bigquery?sq=516129896092:caf01154b224482ba6a591bd3af72352) <br>
- [Looker Studio - Kimia Farma Business Performance Analysis Dashboard](https://lookerstudio.google.com/reporting/20b7e525-724e-4324-93a4-93ff8656b211) <br>

 ![Kimia_Farma_Business_Performance_Analysis-1](https://github.com/Rezikadamayanti/Kimia-Farma-PBI-BigDataAnalytics/assets/72129326/dd6a4f49-d2b5-43fe-b80b-7db1ac65c655)

 [MIT LICENSE](https://github.com/Rezikadamayanti/Kimia-Farma-PBI-BigDataAnalytics/blob/main/LICENSE)
