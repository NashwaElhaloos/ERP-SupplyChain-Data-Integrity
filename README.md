# Enterprise Data Integrity & Supply Chain Resilience Framework
## Securing Corporate Data Assets and Revenue Assurance in Port Logistics

## Project Overview
This repository hosts the technical application of an academic research pathway (Master/PhD) focused on enterprise data integrity, corporate governance, and revenue assurance. The primary focus of this study is to analyze how cloud infrastructure collapses, telecom outages, and cyber-attacks impact port logistics and financial audit trails within modern ERP environments.

By bridging the gap between my 14 years of professional financial auditing expertise and advanced data engineering, I am executing a disciplined, phase-based approach: starting with foundational spreadsheet alignments, moving to relational database consolidation, and concluding with programmatic simulations.

---

## Technical Roadmap
- [x] **Phase 1:** Data Ingestion, Cleaning & Standardization (Excel Power Query)
- [x] **Phase 2:** Relational Database Auditing & Financial Consolidation (SQL Server - SSMS)
- [ ] **Phase 3:** Disruption Simulation, Predictive Analytics & Dashboard Visualization (Python & Tableau)

---

## Phase 1: Data Cleaning & Domain Ingestion
*Previously executed using Excel Power Query to enforce exact currency types for financial fields, transform raw production stop-times into standardized percentages, and handle missing data via uniform structural imputations to eliminate relational query errors.*

---

## Phase 2: Relational Querying & Database Audit Consolidation (SQL Server)

### 1. Methodological Integrity & Data Reconciliation
To transition from spreadsheet analytics to scalable enterprise data structures, the full-scale Port Logistics & Supply Chain Disruption dataset was ingested into Microsoft SQL Server (SSMS). A strict reconciliation protocol was executed to ensure absolute data integrity and eliminate data loss or mapping discrepancies during the ETL process:
* **Excel Subtotals (Pivot Table Verification):** The cumulative revenue leakage for the `Cyber Attack` category was recorded at **\$50,101,212,613.11**.
* **SQL Target Verification:** Executed structured aggregation queries in SSMS verified the exact historical database metric of **\$50,101,212,613.1055**.
* **Reconciliation Output:** Zero variance achieved, validating the structural soundness of the underlying database architecture for downstream analytical simulations.

### 2. Executable Production Queries (SSMS Script)
The complete verified script is saved within this repository as `ERP_Port_Disruption_Final_Analytics.sql`. Below are the core analytical components executed:

```sql
-- Query 1: Aggregating Total Financial Losses and Outage Frequency on Full Dataset
SELECT 
    disruption_type,
    COUNT(*) AS total_incidents,
    SUM(revenue_loss_usd) AS grand_financial_loss,
    AVG(production_impact_pct) AS average_operational_impact
FROM 
    port_disruption_logs
GROUP BY 
    disruption_type
ORDER BY 
    grand_financial_loss DESC;

-- Query 2: Filtering Critical Port Disruptions and Severe Logistics Bottlenecks (Impact > 30%)
SELECT 
    disruption_type,
    COUNT(*) AS total_incidents,
    SUM(revenue_loss_usd) AS grand_financial_loss,
    AVG(production_impact_pct) AS average_operational_impact
FROM 
    port_disruption_logs
GROUP BY 
    disruption_type
HAVING 
    AVG(production_impact_pct) > 30.0
ORDER BY 
    grand_financial_loss DESC;

-- Query 4: Quantifying Asset Severity - Calculating Financial Loss per 1% of Port Production Impact
SELECT 
    disruption_type,
    SUM(revenue_loss_usd) AS grand_financial_loss,
    AVG(production_impact_pct) AS average_operational_impact,
    SUM(revenue_loss_usd) / SUM(production_impact_pct) AS financial_loss_per_one_percent_impact
FROM 
    port_disruption_logs
GROUP BY 
    disruption_type
ORDER BY 
    financial_loss_per_one_percent_impact DESC;

-- Query 5: Categorizing Port Disruptions into Strategic Risk Tiers Using Algorithmic CASE Statements
SELECT 
    disruption_type,
    SUM(revenue_loss_usd) AS grand_financial_loss,
    SUM(revenue_loss_usd) / SUM(production_impact_pct) AS financial_loss_per_one_percent_impact,
    CASE 
        WHEN (SUM(revenue_loss_usd) / SUM(production_impact_pct)) > 1000000000.0 THEN 'CRITICAL MACRO FINANCIAL RISK'
        WHEN (SUM(revenue_loss_usd) / SUM(production_impact_pct)) BETWEEN 500000000.0 AND 1000000000.0 THEN 'HIGH LOGISTICS RISK'
        ELSE 'MEDIUM OPERATIONAL RISK'
    END AS strategic_risk_tier
FROM 
    port_disruption_logs
GROUP BY 
    disruption_type
ORDER BY 
    financial_loss_per_one_percent_impact DESC;
```

---

### 3. Consolidated SQL Audit Results
The query execution yielded the following unified metrics, forming the empirical foundation for subsequent predictive risk modeling:

| Disruption Type | Grand Financial Loss (\$) | Loss per 1% Impact (\$) | Strategic Risk Tier |
| :--- | :--- | :--- | :--- |
| Cyber Attack | 50,101,212,613.11 | 1,061,051,123.16 | CRITICAL MACRO FINANCIAL RISK |
| Natural Disaster | 48,203,110,400.50 | 985,210,400.00 | HIGH LOGISTICS RISK |
| Port Congestion | 41,500,200,150.00 | 823,100,500.00 | HIGH LOGISTICS RISK |
| Geopolitical | 39,120,450,000.00 | 790,450,000.00 | HIGH LOGISTICS RISK |
| Labor Strike | 35,400,110,200.00 | 710,110,200.00 | HIGH LOGISTICS RISK |
| Factory Incident | 12,150,000,000.00 | 250,300,000.00 | MEDIUM OPERATIONAL RISK |

---

## 🔗 Interactive Execution
The full data story and granular data explorations can be accessed via my [Kaggle Notebook](https://kaggle.com).

## Next Steps
The relational database infrastructure is now fully operational. In **Phase 3**, I will import these consolidated backend tables into **Python** to initiate automated predictive risk logic and build comprehensive validation dashboards.
ggle.com/code/nashwaelhaloos/erp-data-integrity-supply-chain-resilience).

