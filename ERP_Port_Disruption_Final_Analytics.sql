-- Phase 2: Relational Querying on Live Port Logistics Dataset
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
