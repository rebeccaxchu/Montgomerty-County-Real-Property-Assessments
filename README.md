# Montgomery County Real Property Assessments

## Overview
This project explores the real property assessments data from Montgomery County, Maryland. Our analysis focuses on understanding property features, historical assessment data, and trends in property value changes. We aim to identify properties that have gained the most value and their locations.

The original dataset contains 352,228 records spanning 220 columns, detailing extensive property features and their historical assessments.

## Dataset
The dataset used in this project is publicly available and can be downloaded from the Maryland's Open Data Portal:

Dataset Link: [Montgomery County Real Property Assessments](https://opendata.maryland.gov/Business-and-Economy/Montgomery-County-Real-Property-Assessments-Hidden/kb22-is2w/about_data)

## Interactive Dashboard
Explore our interactive dashboard to visualize the trends and insights derived from the data:

Dashboard Link: [[Montgomery County Property Insights Dashboard](https://public.tableau.com/views/md_property/bydwellingtype?:language=en-US&publish=yes&:sid=&:display_count=n&:origin=viz_share_link)
]
## Features
This repository is structured to manage a comprehensive data workflow, from extraction to visualization. Here's what each part of the project involves:

### Data Extraction
Extract Original Data: Utilizes the Socrata Web API to programmatically download the latest real property assessments data. This ensures that the analysis is always up-to-date with the most current data available from Montgomery County's open data portal.

### Data Loading and Storage
Load Data to Azure: Implements scripts to load the extracted data into Azure cloud storage. This step ensures that the data is securely stored and scalable.
Create Data Warehouse: Develops a robust data warehouse using PostgreSQL. This centralized repository is designed to support complex queries and extensive data analysis.

### Data Warehouse Design
Logical and Physical Design: Utilizes Python scripts to architect both the logical and physical design of the data warehouse. This includes specifying data types, relationships, and indexing to optimize performance.
ETL Processes: Python scripts are also employed to perform ETL (Extract, Transform, Load) operations. These scripts are responsible for the extraction of data, transforming it into a format suitable for analysis, and loading it into the data warehouse.

### Data Modeling and Documentation
Data Model Documentation: Provides a comprehensive documentation of the data model, illustrating the relationships between the fact tables and dimension tables within the data warehouse. This documentation helps in understanding the data structure and flow, facilitating easier maintenance and scalability.

### Visualization and Reporting
Interactive Dashboard for Visualization: An interactive dashboard hosted on Tableau Online, allowing users to visually explore the insights and trends derived from the data. This dashboard is designed to be intuitive and provides dynamic filtering and drill-down capabilities to explore different facets of the data.


## Known Issues
This project aims for comprehensive analysis and robust data handling; however, there are a few known limitations that users should be aware of:

### 1. Limited Interactive Control in Tableau Online
Issue Description: Currently, there is no implementation for creating parameters that allow easy switching between different views within the Tableau Online dashboard. This limitation may affect the user experience by requiring manual adjustments to explore various aspects of the data.

### 2. Data Quality and Utilization
Issue Description: A significant portion of the property features data contains columns with extensive missing values or columns where the majority of the records have the same value. This can reduce the usefulness of these columns in statistical analysis and may lead to biased or inconclusive insights.


## Contributing
Contributions to this project are welcome! Please fork the repository and submit a pull request with your improvements.
