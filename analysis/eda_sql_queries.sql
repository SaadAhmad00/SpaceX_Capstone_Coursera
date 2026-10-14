-- EDA with SQL
-- GitHub URL: https://github.com/SaadAhmad00/SpaceX_Capstone_Coursera/blob/main/analysis/eda_sql_queries.sql

-- Launch sites and counts
SELECT Launch_Site, COUNT(*) AS total_launches
FROM SPACEXTBL
GROUP BY Launch_Site
ORDER BY total_launches DESC;

-- Payload range analysis
SELECT MIN(Payload_Mass__kg_) AS min_payload,
       MAX(Payload_Mass__kg_) AS max_payload,
       AVG(Payload_Mass__kg_) AS avg_payload
FROM SPACEXTBL;

-- Success rates by launch site
SELECT Launch_Site,
       ROUND(AVG(CAST(Class AS FLOAT)) * 100, 2) AS success_rate_pct
FROM SPACEXTBL
GROUP BY Launch_Site
ORDER BY success_rate_pct DESC;

-- Booster rankings by successful missions
SELECT Booster_Version,
       SUM(CASE WHEN Class = 1 THEN 1 ELSE 0 END) AS successful_missions
FROM SPACEXTBL
GROUP BY Booster_Version
ORDER BY successful_missions DESC;

-- Yearly time trend
SELECT SUBSTR(Date, 1, 4) AS launch_year,
       COUNT(*) AS launches,
       ROUND(AVG(CAST(Class AS FLOAT)) * 100, 2) AS success_rate_pct
FROM SPACEXTBL
GROUP BY launch_year
ORDER BY launch_year;
