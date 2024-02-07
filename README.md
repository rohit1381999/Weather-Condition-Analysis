# Weather Data Analysis SQL Project

This project involves the analysis of weather data using SQL. The dataset, provided by Testbook Skill Academy during the Data Science course, contains information on temperature, precipitation, and other meteorological parameters.

## Project Structure

- **weather_data_analysis.sql**: The main SQL script containing queries to analyze the dataset and answer key questions about the weather.

## Questions Explored

1. **Average Temperature by Month**: Identify the average temperature for each month.
2. **Precipitation Variation**: Analyze how precipitation varies over the years.

# Weather Station Data Analysis

This project involves working with weather station data, performing SQL queries on the `STATION` table, and creating a new table `STATS` to store normalized temperature and precipitation data.

## Table of Contents
1. [Inserting Records](#1-inserting-records)
2. [Querying STATION Table](#2-querying-station-table)
3. [Selecting Northern Stations](#3-selecting-northern-stations)
4. [Creating STATS Table](#4-creating-stats-table)

### 1. Inserting Records

To begin the analysis, we inserted the following records into the `STATION` table:

```sql
INSERT INTO STATION (ID, CITY, STATE, LAT_N, LONG_W)
VALUES 
  (13, 'PHOENIX', 'AZ', 33, -112),
  (44, 'DENVER', 'CO', 40, -105),
  (66, 'CARIBOU', 'ME', 47, -68);


