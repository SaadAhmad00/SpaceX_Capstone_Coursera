# SpaceX Capstone Presentation Deck (Slide Content)

Repository URL: https://github.com/SaadAhmad00/SpaceX_Capstone_Coursera

## 1.3 Executive Summary
- **Methods used:** SpaceX API collection, Wikipedia web scraping, data wrangling, EDA (visual + SQL), Folium geospatial analysis, Plotly Dash dashboards, and predictive ML modeling.
- **Key results:**
  - KSC LC-39A and CCAFS SLC-40 dominate launch volume.
  - Success rates increase over time, especially in recent years.
  - Higher payload missions have mixed outcomes by booster/version.
  - Decision Tree achieved the strongest balanced performance in this project.

## 1.4 Introduction
- SpaceX Falcon 9 missions are analyzed to understand launch success drivers and booster landing outcomes.
- **Problem statement:** identify factors influencing launch outcomes and build a model that predicts mission success.

## 1.5 Data Collection - SpaceX API
- **Flow (key phrases):** `HTTP GET -> JSON normalize -> selected columns -> dataframe export`
- Example endpoints: `/v4/launches/past`, `/v4/rockets`, `/v4/launchpads`.
- GitHub URL: https://github.com/SaadAhmad00/SpaceX_Capstone_Coursera/blob/main/analysis/spaceX_api_collection.md

## 1.6 Data Collection - Web Scraping
- **Flow (key phrases):** `request page -> parse HTML table -> extract rows -> clean text -> structured dataframe`
- Source context: Wikipedia Falcon 9 launch history table.
- GitHub URL: https://github.com/SaadAhmad00/SpaceX_Capstone_Coursera/blob/main/analysis/web_scraping_method.md

## 1.7 Data Wrangling Methodology
- Missing-value handling, type conversion, feature standardization, label cleanup, and merge validation.
- Final engineered columns include launch site, payload class, orbit, and year.
- GitHub URL: https://github.com/SaadAhmad00/SpaceX_Capstone_Coursera/blob/main/analysis/data_wrangling_methodology.md

## 1.8 EDA with Data Visualization
- Charts used: scatter plots, stacked/clustered bar charts, and yearly trend lines.
- Purpose: inspect payload-vs-success relationships, site-level performance, and temporal progress.
- GitHub URL: https://github.com/SaadAhmad00/SpaceX_Capstone_Coursera/blob/main/analysis/eda_visualization_results.md

## 1.9 EDA with SQL
- Queries summarize launch site counts, payload ranges, success percentages, top-performing boosters, and year-over-year behavior.
- GitHub URL: https://github.com/SaadAhmad00/SpaceX_Capstone_Coursera/blob/main/analysis/eda_sql_queries.sql

## 1.10 Interactive Visual Analytics
- **Folium map:** launch site markers, mission record layers, and proximity overlays.
- **Plotly Dash app:** success pie chart and payload-vs-outcome scatter filter.
- GitHub URLs:
  - https://github.com/SaadAhmad00/SpaceX_Capstone_Coursera/blob/main/analysis/folium_map_analysis.md
  - https://github.com/SaadAhmad00/SpaceX_Capstone_Coursera/blob/main/analysis/plotly_dash_analysis.md

## 1.11 EDA Visualization Result Slides
- **Scatter plot:** Payload Mass vs Launch Success shows separability in key payload ranges.
- **Bar chart:** Launch Site vs Success Rate compares operational reliability by site.
- **Yearly trend:** Success ratio trend line shows improvement in later years.

## 1.12 EDA with SQL Result Slides
- Included outputs cover:
  - Launch site utilization
  - Payload aggregation
  - Success rates by site and booster
  - Booster/flight ranking
  - Time analysis by year

## 1.13 Folium Map Slides
- Launch site marker map with popup metadata.
- Launch record clustering/layering for mission outcomes.
- Proximity analysis to coastlines, highways, railways, and cities.

## 1.14 Plotly Dash Slides
- Success pie chart with launch-site filtering.
- Payload vs launch outcome scatter with dynamic payload range filter.

## 1.15 Predictive Analysis Slides
- Models trained: Logistic Regression, SVM, Decision Tree, KNN.
- Evaluation: accuracy, F1-score, cross-validation comparison.
- Confusion matrix included for the selected best model.
- **Best model:** Decision Tree (best combined precision/recall for this dataset).
- **Conclusion:** launch site and payload are major predictive factors; model performance improved with cleaned features and class balancing.
- Creative insight: combining geospatial context with mission metadata can further improve deployable mission-risk scoring.
