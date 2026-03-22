🚖 Ola Ride Booking Data Analysis

📌 Project Overview
This project focuses on analyzing ride booking data from a ride-hailing service to uncover insights into booking trends, cancellations, operational efficiency, and revenue performance.

The dataset contains approximately 20,000 records and simulates real-world ride-booking scenarios, including successful rides, cancellations, and incomplete trips.

The goal of this project is to transform raw data into actionable business insights that can help improve customer experience and operational performance.

---

🎯 Objectives
- Analyze booking trends and ride demand patterns  
- Identify key factors contributing to ride cancellations  
- Evaluate operational efficiency using time-based metrics  
- Understand revenue distribution and payment behavior  
- Analyze customer and driver ratings  

---

📊 Dataset Description

The dataset consists of ~20,000 ride booking records with multiple features covering booking details, ride metrics, cancellations, and revenue.

🔑 Key Columns:

🧾 Booking Information
- **Date & Time** → Timestamp of booking  
- **Booking_ID** → Unique identifier for each ride  
- **Booking_Status** → (Success, Cancelled by Customer, Cancelled by Driver, Incomplete)  

👤 Customer & Driver Details
- **Customer_ID** → Unique customer identifier  
- **Driver_Ratings** → Rating given to driver  
- **Customer_Rating** → Rating given by driver  

🚗 Ride Details
- **Vehicle_Type** → Type of ride (Auto, Mini, Sedan, SUV, Bike, etc.)  
- **Pickup_Location & Drop_Location** → Ride locations  
- **Ride_Distance** → Distance of the ride  

⏱️ Time Metrics
- **V_TAT (Vehicle Turnaround Time)** → Time taken for driver to reach pickup location  
- **C_TAT (Customer Turnaround Time)** → Time taken to complete the trip  

❌ Cancellation & Incomplete Data
- **Canceled_Rides_by_Customer** → Reason for customer cancellations  
- **Canceled_Rides_by_Driver** → Reason for driver cancellations  
- **Incomplete_Rides & Reason** → Details of incomplete trips  

💰 Revenue & Payment
- **Booking_Value** → Total fare amount  
- **Payment_Method** → UPI, Cash, Card, etc.  

---

⚠️ Data Characteristics & Cleaning

- Ratings and time-related metrics are available **only for successful rides**  
- Missing values were present in cancelled and incomplete rides  
- Data cleaning involved:
  - Handling missing values  
  - Ensuring correct data types  
  - Filtering relevant records for analysis  

---

🛠️ Tools & Technologies
- **Excel** → Data Cleaning & Preprocessing  
- **SQL** → Data Analysis & Querying  
- **Power BI** → Data Visualization & Dashboard Creation  

---

🔍 Analysis Performed

📈 Booking Analysis
- Ride volume trends over time  
- Distribution of booking statuses  

❌ Cancellation Analysis
- Customer vs Driver cancellations  
- Analysis of cancellation reasons  

🚗 Vehicle Analysis
- Revenue contribution by vehicle type  
- Average ride distance per vehicle  

⭐ Ratings Analysis
- Driver rating distribution  
- Customer vs Driver rating comparison  

💰 Revenue Analysis
- Total booking value  
- Revenue by payment method  

---

💡 Key Insights
- Driver cancellations were higher than customer cancellations, indicating operational inefficiencies  
- Peak demand periods showed higher booking volume but also increased cancellations  
- Revenue varied significantly across different vehicle types  
- Customer ratings were closely linked to ride success and service quality  

---

🧠 Business Recommendations
- Introduce incentives for drivers during peak hours  
- Improve driver allocation in high-demand areas  
- Monitor low-rated drivers to enhance service quality  
- Analyze driver behavior patterns to reduce cancellations  

---

📊 Dashboard Preview
<img width="595" height="332" alt="OLA Dashboard img" src="https://github.com/user-attachments/assets/36eb48ac-6f61-4aa1-a043-9e5461596b99" />



---

🚀 Future Improvements
- Build predictive models for ride cancellations  
- Implement demand forecasting  
- Automate data pipelines for real-time insights  

---

👤 Author
**Bilal Ahmed**  
Data Analyst  
