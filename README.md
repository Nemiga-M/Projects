# PROJECTS
## Project:1 (Excel & Power BI)
# ❤️ Heart Disorder Analysis Dashboard
This project demonstrates an **end-to-end data analysis workflow** using multiple tools:
- **Excel** → Importing the raw dataset
- **Power Query** → Cleaning and transforming the master dataset
- **Power BI** → Creating measures and building interactive visualizations


## 📖 Overview
This repository contains a **Heart Disorder Analysis Dashboard** built to explore health and lifestyle factors influencing coronary heart disease (CHD).  
The project leverages data from **3,000 patients** and provides insights into gender differences, risk factors, and lifestyle habits.

---

## 📊 Key Features
- **Patient Overview**
  - Total Patients: 3000
  - Healthy Heart: 1000
  - Heart Disorder: 2000

- **Risk Factors Analyzed**
  - Blood Pressure (Normal, High, Low)
  - Stress Levels (Low, Medium, High)
  - Cholesterol Status (Normal, Moderate, High Risk)
  - Diabetes Status (Diabetic, Non-Diabetic)
  - Weight Status (Normal, Overweight, Obese, Underweight)
  - Exercise Habits (Low, Medium, High)
  - Smoking & Alcohol Consumption
  - Family History of Heart Disease

- **Gender-Based Insights**
  - Male Patients: 1969 (Affected: 1328)
  - Female Patients: 1031 (Affected: 672)
  - Comparative breakdown of BP, stress, cholesterol, diabetes, and lifestyle habits.

---

## 🗂 Dataset Schema
| Column              | Description                                      |
|---------------------|--------------------------------------------------|
| Patient_ID          | Unique identifier for each patient               |
| Gender              | Male / Female                                    |
| Age                 | Patient age                                      |
| Weight_Status       | Normal, Overweight, Obese, Underweight           |
| BP_Category         | Normal, High, Low                                |
| Stress_Level        | Low, Medium, High                                |
| Diabetes_Status     | Diabetic, Non-Diabetic                           |
| Cholesterol_Status  | Normal, Moderate Risk, High Risk                 |
| Exercise_Habit      | Low, Medium, High                                |
| Smoking_Habit       | Yes / No                                         |
| Alcohol_Consumption | None, Low, Medium, High                          |
| Family_History      | Yes / No                                         |
| Heart_Disorder      | Healthy / Affected                               |

---
## 🔹 Workflow 
1. **Excel (Importing)** 
    - Patient health records imported from CSV/Excel files. 
    - Initial exploration of raw data.
2. **Power Query (Cleaning)**
      - Removed duplicates and null values.
      - Standardized categories (e.g., BP levels, stress levels, cholesterol status). 
      - Derived **3 analytical datasets** from the master dataset for focused analysis.
3. **Power BI (Measures & Visualization)**
    - Created DAX measures (e.g., On-Time Delivery %, Heart Disorder Rate).
    - Built dashboards with charts for:
       - Heart disorder by gender
       - BP category distribution
       - Stress level impact
       - Lifestyle factors (exercise, smoking, alcohol)
    - Published interactive reports for decision-making.
---
## 🎯 Use Cases
   - Detect **risk factors** for heart disorders using patient data.
   - Monitor **patient vitals** (ECG, blood pressure, oxygen levels) via dashboards. 
   - Support **personalized treatment plans** based on demographics and medical history. 
   - Forecast **hospital admissions** for better resource allocation. 
   - Provide **population-level insights** for public health planning.
--- 
Here’s the Heart Disorder dashboard:
<img width="1347" height="902" alt="Heard Disorder Dashboard-1" src="https://github.com/user-attachments/assets/38106582-0b03-4bc0-ac88-8f64db15c53f" />
<img width="1343" height="902" alt="Heard Disorder Dashboard-2" src="https://github.com/user-attachments/assets/7ab8127e-3f78-4480-82b6-c8a7074736f7" />
<img width="1072" height="786" alt="Heard Disorder Dashboard-3" src="https://github.com/user-attachments/assets/5b72a849-f261-4910-b018-f936baab6bd1" />

---
## Project:2 (Power BI)
# 🚚 Fleet Performance & Delivery Efficiency Analysis

## 📖 Overview
This repository provides a dataset and dashboard for analyzing **fleet performance** and **delivery efficiency** in logistics operations.  
The project focuses on:
- Vehicle utilization
- Cost efficiency
- Fuel consumption
- Maintenance tracking
- Delivery success rates

---

## 📊 Key Metrics
- **On-Time Delivery by Destination**
  - Delhi: 88
  - Pune: 88
  - Bangalore: 63
  - Hyderabad: 50
  - Kolkata: 50
  - Chennai: 40
  - Mumbai: 33

- **Efficiency Indicators**
  - Average Cost per km: **18.93**
  - Average Fuel Efficiency: **11.52 km/L**
  - On-Time Delivery Rate: **60%**

- **Maintenance Costs (per vehicle type)**
  - Truck: 14.19K
  - Mini-Truck: 9.03K
  - Van: 8.13K

- **Driver Impact**
  - Driver D03 improves likelihood of on-time delivery by **1.83x**

---

## 🗂 Dataset Schema
| Column              | Description                                      |
|---------------------|--------------------------------------------------|
| Vehicle_ID          | Unique identifier for each vehicle               |
| Vehicle_Type        | Truck, Van, Mini-Truck, EV                       |
| Distance_km         | Distance traveled in km                          |
| Fuel_Consumption    | Fuel used (liters/kWh)                           |
| Fuel_Efficiency     | Efficiency (km/L or km/kWh)                      |
| Maintenance_Cost    | Cost of servicing and repairs                    |
| Downtime_hr         | Hours vehicle was unavailable                    |
| Driver_ID           | Assigned driver                                  |
| Operating_Cost/km   | Cost per kilometer                               |
| Delivery_Status     | On-Time / Delayed                                |
| Emissions_CO₂       | Environmental footprint (kg CO₂)                 |

---

## 🎯 Use Cases
  - Fleet Managers: Optimize vehicle usage and reduce downtime.
  - Logistics Analysts: Identify cost drivers and improve delivery efficiency.
  - Sustainability Teams: Track emissions and evaluate EV adoption impact.
  - Data Scientists: Build predictive models for delivery success and cost forecasting.

---
Here’s the fleet performance dashboard:

<img width="996" height="860" alt="image" src="https://github.com/user-attachments/assets/957ae671-a244-4adf-8fc7-43a78422920d" />

## Project:3 (SQL & Power BI)
# 🎓 E-Learning Platform Analysis Dashboard 
## Overview 
- This project provides a comprehensive **Power BI / Data Analytics dashboard** for monitoring and analyzing the performance of an online learning platform. It highlights key metrics such as course purchases, learner demographics, revenue generation, and category-wise insights.
---
## Features 
- **Top Metrics**
  - Purchased vs. Unpurchased Courses
  - Total Learners and Courses
  - Total Revenue
- **Learner Demographics**
  - Distribution of learners by country (USA, India, UK, Australia, etc.)
- **Revenue Insights**
  - Highest revenue-generating courses (e.g., Cybersecurity Basics, Data Science with Python)
  - Revenue hierarchy by year
  - Revenue by category (Security, Cloud, DevOps, etc.)
- **Course Engagement**
  - Course-wise learner count
  - Category-wise course distribution
  - Learner acquisition status (Purchased vs. Unpurchased)
---

## Key Insights 
  - **Cybersecurity Basics** generated the highest revenue (**8K**).
  - **USA & India** together account for more than half of total learners.
  - **Purchased course ratio** is ~31%, indicating scope for marketing improvements.
  - **Revenue growth** from 2024 to 2025 shows strong upward momentum.
---
## Features
  - **Top Metrics:** Purchased vs. Unpurchased Courses, Total Learners, Total Revenue
  - **Learner Demographics:** Country-wise distribution
  - **Revenue Insights:** Course-wise and category-wise revenue breakdown
  - **Course Engagement:** Learner counts per course and acquisition status
  - **Yearly Trends:** Revenue hierarchy by year
---
**Future Enhancements** 
  - Integrate real-time data pipelines.
  - Add predictive analytics for learner acquisition. \
  - Include learner feedback and ratings for qualitative insights.
---

Here’s the E-Learning Platform dashboard:
<img width="997" height="627" alt="E-Learning Dashboard" src="https://github.com/user-attachments/assets/16da843e-f272-4853-a4e3-74f763287c33" />
<img width="808" height="469" alt="E-Learning_Key Insights" src="https://github.com/user-attachments/assets/baf46fe1-0db1-4855-a32c-4d1299e13b31" />

## Author
  - **Nemiga M.**  
  - ***Data Analyst***
