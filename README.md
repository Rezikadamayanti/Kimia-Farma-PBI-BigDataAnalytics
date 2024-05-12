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
        <img align="center" width="800" alt="kf_final_transaction" src="https://github.com/Rezikadamayanti/Kimia-Farma-PBI-BigDataAnalytics/assets/72129326/a2ca1889-44b8-46e8-80e7-8cdd885eb541">

2. **kf_inventory**: This table stores information about the inventory of medicinal products in each Kimia Farma branch. This includes inventory ID, branch ID, product ID, product name, and the number of medicinal product stocks available at each branch.
        <img align="center" width="800" alt="kf_inventory" src="https://github.com/Rezikadamayanti/Kimia-Farma-PBI-BigDataAnalytics/assets/72129326/b9851815-fa80-4ac0-b944-16ca4d76f1bc">

3. **kf_kantor_cabang**: This table contains information about Kimia Farma branch offices. Each row includes details such as branch ID, branch category, branch name, branch city, branch province, and customer rating of the branch.
        <img align="center" width="800" alt="kf_kantor_cabang" src="https://github.com/Rezikadamayanti/Kimia-Farma-PBI-BigDataAnalytics/assets/72129326/46b9a822-5450-4735-a112-0087f7f15199">
   
4. **kf_product**: This table contains information about medicinal products sold at Kimia Farma. Each row includes details such as product ID, product name, product category, and product price.
         <img align="center" width="800" alt="kf_product" src="https://github.com/Rezikadamayanti/Kimia-Farma-PBI-BigDataAnalytics/assets/72129326/a889b919-17ce-45e1-94a2-2de8a61f952a">


## C. Create and analyze Data Mart: Analysis Tables
The requirements for creating a Data Mart named Analysis Table have been provided. This Analysis Table consists of 16 columns. Query creation involves analyzing each table in the 'rakamin-kf-analytics-422902' project and listing them in the chemical-pharma database previously created in Google BigQuery. The following query yields results in the form of a Data Mart, namely 'Analysis Table'.
- [Query Data Mart - Analysis Table](https://github.com/Rezikadamayanti/Kimia-Farma-PBI-BigDataAnalytics/blob/main/Query%20DM%20-%20Analysis%20Table.sql)<br>
- [Google BigQuery - Analysis Table](https://console.cloud.google.com/bigquery?sq=516129896092:caf01154b224482ba6a591bd3af72352) <br>

    <img align="center" width="800" alt="query" src="https://github.com/Rezikadamayanti/Kimia-Farma-PBI-BigDataAnalytics/assets/72129326/3bf80c68-7258-447d-a00c-984bcf20c47a">
    <img align="center" width="800" alt="query2" src="https://github.com/Rezikadamayanti/Kimia-Farma-PBI-BigDataAnalytics/assets/72129326/297b9162-1657-4ec9-bb9f-2f4f3c6d578e">


## D. Exploratory Data Analysis (EDA) and Dashboards
The process of conducting Exploratory Data Analysis (EDA) and creating dashboards was carried out using Google BigQuery and Looker Studio.
- [Google BigQuery - EDA](https://console.cloud.google.com/bigquery?sq=516129896092:caf01154b224482ba6a591bd3af72352) <br>
- [Looker Studio - Kimia Farma Business Performance Analysis Dashboard](https://lookerstudio.google.com/reporting/20b7e525-724e-4324-93a4-93ff8656b211) <br>

 ![Dasboard1](https://github.com/Rezikadamayanti/Kimia-Farma-PBI-BigDataAnalytics/assets/72129326/d334b945-2cc6-430e-87cc-aea74de56dc7)

 ![Dashboard 2](https://github.com/Rezikadamayanti/Kimia-Farma-PBI-BigDataAnalytics/assets/72129326/c5461a74-5759-4344-946c-f6de39027a78)

 ![Dashboard 3](https://github.com/Rezikadamayanti/Kimia-Farma-PBI-BigDataAnalytics/assets/72129326/cf71f522-3177-4691-9328-246f1f8ea8c4)

 [MIT LICENSE](https://github.com/Rezikadamayanti/Kimia-Farma-PBI-BigDataAnalytics/blob/main/LICENSE)
