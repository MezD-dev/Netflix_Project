# 🎬 Netflix WatchMap: Global Trends & Content Analytics

---

## 📖 Table of Contents  
- [🔍 Project Overview](#-project-overview)  
- [🛠 Skills Demonstrated](#-skills-demonstrated)  
- [📂 Repository Contents](#-repository-contents)  
- [📊 Key Insights & Findings](#-key-insights--findings)  
- [🚀 How to Use This Repository](#-how-to-use-this-repository)  
- [🏆 Why This Project is Valuable](#-why-this-project-is-valuable)  
- [📊 Data Source](#-data-source)  
- [📌 Author & Contact](#-author--contact)  

---

## 🔍 Project Overview
This project explores Netflix’s global content library using PostgreSQL and Tableau to analyze trends in movie and TV show distribution, genre popularity, ratings, and global availability.

By answering 15 key business questions, we uncover insights such as which countries have the most Netflix content, the longest-running shows, actor appearances, and content classification based on keywords.

This repository highlights technical proficiency in SQL, data analysis, and visualization, making it a valuable portfolio project for data analysts, business intelligence professionals, and aspiring data scientists.

---

## 🛠 Skills Demonstrated  

- **SQL Querying**: Aggregations, filtering, ranking, and transformations.  
- **PostgreSQL Functions**: `STRING_TO_ARRAY()`, `UNNEST()`, `RANK()`, and `SPLIT_PART()`.  
- **Data Cleaning & Processing**: Handling missing values and ensuring data consistency.  
- **Joins & Aggregates**: Extracting insights from structured data.  
- **CTEs & Window Functions**: Ranking and categorizing Netflix content.  
- **Tableau Visualization**: Presenting insights through interactive dashboards.  
- **Business Problem-Solving**: Answering real-world content distribution questions.  

---

## 📂 Repository Contents  

| File Name | Description |  
|-----------|------------|  
| `netflix_titles.csv` | The dataset containing Netflix’s movie and TV show details. |  
| `Netflix_Business_Problems.sql` | SQL queries for solving 15 key Netflix business questions. |  
| `Netflix Dashboard.twb` | Tableau workbook containing interactive visualizations. |  

---

## 📊 **Key Insights & Findings**
### **1️⃣ Content Distribution & Popularity**
- Movies make up ~70% of Netflix’s catalog, while TV shows account for the remaining 30%.
- TV-MA (Mature Audiences) is the most common rating across both movies and TV shows.
- Dramas and International Movies dominate the platform, making up the most popular genres.

### **2️⃣ Country-Based Analysis**
- Top 5 countries with the most content: USA, India, UK, Canada, and France.
- India has seen a steady increase in Netflix content releases over the years, averaging a significant percentage of new additions annually.

### **3️⃣ Actor & Director Trends**
- Denzel Washington has appeared in multiple Netflix movies in the last 10 years.
- Steven Spielberg is one of the top directors with multiple titles on Netflix.
- The top 10 actors with the highest movie appearances in the USA were identified using PostgreSQL queries.

### **4️⃣ Categorization & Content Trends**
- The longest movie on Netflix was identified using SQL queries.
- TV shows with more than 5 seasons were extracted to see which series have the highest longevity.
- Content was categorized into ‘Good’ or ‘Bad’ based on descriptions containing words like ‘kill’ or ‘violence’.

---

## 🚀 **How to Use This Repository**
### **1️⃣ Running SQL Queries**
- Open `Netflix_Business_Problems.sql` in PostgreSQL or any SQL editor.
- Ensure the dataset (netflix_titles.csv) is loaded into your database.
- Execute the queries to extract insights from the Netflix dataset.

### **2️⃣ Exploring the Tableau Dashboard**
- Open `Netflix Dashboard.twb` using **Tableau Desktop**.
- Interact with filters to analyze country-based trends, rating distributions, and genre insights.
- View content distribution, top genres, and Netflix’s growth trends over time.

---

## 🏆 **Why This Project is Valuable**
✔ **End-to-End Data Analysis** – From raw data extraction (**SQL**) to visualization (**Tableau**).  
✔ **Showcases Technical SQL Skills** – Uses **window functions, ranking, and filtering**. 
✔ **Real-World Business Insight** – Solves **content distribution, actor trends, and content classification**. 

---

## 📊 Data Source  

📌 [Netflix Movies and TV Shows Dataset – Kaggle](https://www.kaggle.com/datasets/shivamb/netflix-shows)  

This dataset contains key details about Netflix’s streaming content, including:  

- **Title, Genre, Country, Director, Cast, Release Year, Ratings, Duration, and Description**  

It provides valuable insights into **Netflix's global content distribution, genre popularity, and streaming trends over time**.  

---

## 📌 Author & Contact  

**👤 Mezmure Dawit**  

📧 Email: [mezmure221@gmail.com](mailto:mezmure221@gmail.com)  
🔗 LinkedIn: [linkedin.com/in/mezmure-dawit](https://www.linkedin.com/in/mezmure-dawit/)  
🔗 GitHub: [github.com/MezD-dev](https://github.com/MezD-dev)  
📊 Tableau Public (Netflix WatchMap): [View on Tableau Public](https://public.tableau.com/app/profile/mezmure.dawit2832/viz/Book1_17404480063310/Netflix)  

