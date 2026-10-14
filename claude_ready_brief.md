# Claude-Ready Brief: SpaceX Capstone Presentation

Use this markdown as the source document for generating presentation-ready slides.

Repository: https://github.com/SaadAhmad00/SpaceX_Capstone_Coursera

## 1.3 Executive Summary
- Methods used: SpaceX API collection, Wikipedia web scraping, data wrangling, EDA (visual + SQL), Folium geospatial analytics, Plotly Dash analytics, and predictive machine learning.
- Key results:
  - KSC LC-39A and CCAFS SLC-40 contribute most launches.
  - Success rates improve over time.
  - Payload and launch site influence outcomes.
  - Decision Tree performed best overall in this project.

## 1.4 Introduction
- Background: Falcon 9 launch data can reveal operational patterns linked to mission success.
- Problem: Determine key factors affecting launch outcomes and build a model to predict mission success.

## 1.5 Data Collection – SpaceX API
- Flow: `HTTP GET -> JSON normalization -> field selection -> dataframe export`
- Endpoints: `/v4/launches/past`, `/v4/rockets`, `/v4/launchpads`
- GitHub URL: https://github.com/SaadAhmad00/SpaceX_Capstone_Coursera/blob/main/analysis/spaceX_api_collection.md

## 1.6 Data Collection – Web Scraping
- Flow: `request web page -> parse table -> extract rows -> clean text -> structured dataframe`
- Reference source: Wikipedia Falcon 9 launch history table.
- GitHub URL: https://github.com/SaadAhmad00/SpaceX_Capstone_Coursera/blob/main/analysis/web_scraping_method.md

## 1.7 Data Wrangling Methodology
- Steps: remove irrelevant/duplicate data, convert data types, treat missing values, normalize labels, engineer features (`Class`, `Year`).
- GitHub URL: https://github.com/SaadAhmad00/SpaceX_Capstone_Coursera/blob/main/analysis/data_wrangling_methodology.md

## 1.8 EDA with Data Visualization
- Charts: scatter plots, bar charts, yearly trend lines.
- Purpose: evaluate payload impact, site-level performance, and temporal improvements.
- GitHub URL: https://github.com/SaadAhmad00/SpaceX_Capstone_Coursera/blob/main/analysis/eda_visualization_results.md

## 1.9 EDA with SQL
- SQL summary: launch-site counts, payload distribution, success rates, booster rankings, yearly time analysis.
- GitHub URL: https://github.com/SaadAhmad00/SpaceX_Capstone_Coursera/blob/main/analysis/eda_sql_queries.sql

## 1.10 Interactive Visual Analytics
- Folium map: site markers, launch record overlays, proximity analysis.
- Plotly Dash app: success pie chart, payload-vs-outcome scatter plot with filters.
- GitHub URLs:
  - https://github.com/SaadAhmad00/SpaceX_Capstone_Coursera/blob/main/analysis/folium_map_analysis.md
  - https://github.com/SaadAhmad00/SpaceX_Capstone_Coursera/blob/main/analysis/plotly_dash_analysis.md

## 1.11 EDA Visualization Result Slides
- Include scatter plots, bar charts, and yearly trends.
- Highlight what each visualization proves and why it matters.

## 1.12 EDA with SQL Result Slides
- Include launch-site analysis, payload ranges, success rates, rankings, and year/time-based findings.

## 1.13 Folium Map Slides
- Include launch site markers, launch record layers, and proximity analysis visuals.

## 1.14 Plotly Dash Slides
- Include launch success pie charts and payload-vs-outcome scatter plots.

## 1.15 Predictive Analysis Slides
- Include multiple models: Logistic Regression, SVM, Decision Tree, KNN.
- Include evaluation metrics, confusion matrix, and best model rationale.
- Final conclusion: summarize strongest predictors and practical insights.
- Innovation note: combining geospatial proximity and mission metadata can improve mission-risk scoring.

## Source Deck
- Main deck markdown: https://github.com/SaadAhmad00/SpaceX_Capstone_Coursera/blob/main/slides/final_presentation.md
