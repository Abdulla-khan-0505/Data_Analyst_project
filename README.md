# 🚖 InDrive Data Analyst Project

## 📊 Project Overview

This project presents an in-depth data analysis of booking data from InDrive (mocked as OLA rides in Bangalore). It includes data cleaning, SQL-based querying, and a dynamic Power BI dashboard to derive actionable insights. The goal was to analyze ride patterns, cancellations, payment trends, and customer/driver satisfaction to aid business decision-making.

---

## 🛠️ Tools & Technologies Used

- **Microsoft Excel** – Data preprocessing and understanding
- **MySQL** – For writing SQL queries to extract insights
- **Power BI** – For data visualization and dashboard creation
- **SQL Views** – To build reusable logic for different KPIs

---

## 📁 Dataset Information

- **File:** `indrive Bookings-70000-Rows.xlsx`
- **Rows:** 70,000+
- **Columns:** 19, including:
  - Booking Date, Time, ID
  - Customer ID, Vehicle Type, Ride Distance
  - Booking Status (Success, Cancelled, Incomplete)
  - Payment Method, Ratings
  - Cancellation & Incomplete Ride Reasons

The dataset was synthetically created using realistic assumptions for a month of rides .

---

## 🧮 SQL-Based Analysis (Highlights)

Performed various SQL queries to answer key business questions, including:

1. Total successful bookings  
2. Average ride distance by vehicle type  
3. Top 5 customers by total bookings  
4. Count of rides cancelled by drivers/customers  
5. Average customer and driver ratings by vehicle type  
6. Revenue generated from successful rides  
7. Incomplete rides and their reasons  
8. Payment trends (e.g., UPI vs Cash usage)

> The queries are available in [`indrive_sql.sql`](indrive_ sql.sql)

---

## 📈 Power BI Dashboard

An interactive Power BI dashboard was developed to visualize insights such as:

- 🚗 **Ride Volume Over Time**
- 📉 **Booking Status Breakdown**
- 🛵 **Top Vehicle Types by Ride Distance**
- ⭐ **Customer and Driver Ratings**
- 💸 **Revenue by Payment Method**
- ❌ **Reasons for Cancellation (Customer & Driver)**
- 🧑‍🤝‍🧑 **Top 5 Customers by Booking Value**

> 🖼️ A video walkthrough of the dashboard will be uploaded here soon.

---

## 📌 Key Insights

- Over **60%** of bookings were successful.
- **Auto** and **Bike** rides dominated in frequency and short distances.
- **Prime Sedan** had higher booking values and better ratings.
- Most cancellations by customers were due to “Driver not moving.”
- Weekends saw higher revenue per booking.

---

## 🧠 Learning Outcomes

- SQL query optimization using `VIEW`s for analysis
- Real-world KPI building and data segmentation
- Power BI dashboarding and storytelling using filters, slicers, and custom visuals

---

## ▶️ Video 

https://github.com/user-attachments/assets/b470895f-2066-4c00-bad4-ec9962ee9527

Demonstration



---

## 🙋‍♂️ About Me

**Abdulla Khan**  
📧 abdullakhan0505@gmail.com  
🔗 [GitHub](https://github.com/Abdulla-khan-0505)

---

> 🔐 *No sensitive or real customer data is used in this project. All data is dummy and for educational purposes only.*
