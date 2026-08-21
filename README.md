# ERP-SupplyChain-Data-Integrity
# Secure Framework for Enterprise Data Integrity and Supply Chain Resilience

## Project Overview
This repository hosts the technical implementation of my research pathway (Master/PhD). The core focus of this study is to analyze enterprise data integrity and revenue assurance during cloud and ERP system downtimes within port logistics ecosystems.

---

## Phase 1: Data Preprocessing and Cleaning (Excel Power Query)
Before moving to advanced SQL queries and Python scripts, I used **Power Query** to clean and prepare the raw empirical data (`Supply Chain Disruption and Recovery Dataset`). This step ensures the dataset is structured and accurate for future database operations.

### Key Cleaning Steps Applied:
1. **Formatting Financial Data:** 
   * Formatted the `revenue_loss_usd` column to **Currency**. This helps ensure precision and clear visibility when calculating total revenue leakage during operational disruptions.
   
2. **Standardizing Operational Metrics:** 
   * Converted the raw numbers in the `production_impact_pct` column to **Percentage** format to properly represent the scale of production downtime.
   
3. **Handling Missing Values:** 
   * Scanned the `permanent_supplier_change` column for missing or `null` entries and replaced them with **`False`**. This ensures consistency across the entire column and prevents errors during future relational queries and coding phases.

---

## Technical Roadmap
- [x] **Phase 1:** Data Cleaning and Standardization (Excel Power Query)
- [ ] **Phase 2:** Relational Database Auditing and Financial Analysis (SQL)
- [ ] **Phase 3:** Outage Simulation and Data Visualization (Python & Dashboards)
