# Modern Data Engineering Architecture (Batch Ingestion)

This project demonstrates a **modern end-to-end data engineering architecture**
using **Batch concept**, implemented on **Google BigQuery**
with the **theLook E-commerce public dataset**.

It covers:
- Data ingestion
- Bronze → Silver → Gold modeling
- ELT transformations using SQL
- Analytics use cases
- Data quality checks
- Real-world SQL patterns used by Data Engineers

---

## 🏗 Architecture Overview
<img width="787" height="395" alt="Screenshot 2025-12-19 175243" src="https://github.com/user-attachments/assets/88f0b304-cb35-481e-814e-3b12689a085e" />


### Batch Pipeline
Source(RAW DATA) → GCS → BigQuery(STAGING) → Silver(FACT TABLE) → Gold(Incremental Loading) → DATA QUALITY  → Analytics / BI

---

## 🧰 Tech Stack

| Layer | Tool |
|------|------|
| Storage | Google Cloud Storage |
| Warehouse | BigQuery |
| Transformations | SQL |
| Modeling | Star Schema (Facts & Dimensions) |
| Orchestration | Airflow (Conceptual DAG) |
| Data Quality | SQL-based checks |

---

## 📂 Data Layers

### Bronze (Raw)
- Raw data ingested from source systems
- Stored in original format

### Silver (Cleaned)
- Deduplication
- Data type standardization
- Flattened structures

### Gold (Business)
- Fact & Dimension tables
- Analytics-ready models

---

## 📊 Analytics Use Cases

- 30-Day Rolling Revenue
- Customer Lifetime Value (LTV)
- Churn Identification
- Cohort Analysis
- Fraud Pattern Detection
- Sessionization
- SCD Type-2 Modeling

---

## ✅ Data Quality Checks

- Null checks
- Duplicate detection
- Referential integrity
- Business rule validation

---

## 🚀 Why This Project?

This repository is designed to:
- Simulate **real-world data engineering pipelines**
- Demonstrate **SQL mastery for DE roles**
- Show understanding of **modern architectures**
- Act as a **portfolio project for interviews**

---

## 📌 Dataset

- theLook E-commerce Dataset (Public BigQuery Dataset)

---

## 👤 Author

**Your Name**  
Data Engineer | SQL | BigQuery | Cloud  
LinkedIn: <your-link>
