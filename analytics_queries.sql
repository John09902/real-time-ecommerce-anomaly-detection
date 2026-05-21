-- Database creation --
create database ecommerce_anomaly_db;
use ecommerce_anomaly_db;


-- Table creation --

CREATE TABLE anomaly_alerts (
    alert_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    event_timestamp DATETIME NOT NULL,
    risk_score FLOAT NOT NULL,
    risk_level VARCHAR(20) NOT NULL,
    reason TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

select * from anomaly_alerts;

-- Query 1 — Total anomalies--
SELECT COUNT(*) AS total_alerts
FROM anomaly_alerts;

-- Query 2 — Risk level distribution --
SELECT
    risk_level,
    COUNT(*) AS total
FROM anomaly_alerts
GROUP BY risk_level
ORDER BY total DESC;

-- Query 3 — Top suspicious users--
SELECT
    user_id,
    COUNT(*) AS total_alerts
FROM anomaly_alerts
GROUP BY user_id
ORDER BY total_alerts DESC
LIMIT 20;

-- Query 4 — Most common anomaly reasons --
SELECT
    reason,
    COUNT(*) AS frequency
FROM anomaly_alerts
GROUP BY reason
ORDER BY frequency DESC;

-- Query 5 — Average risk score --
SELECT
    ROUND(AVG(risk_score), 2)
    AS avg_risk_score
FROM anomaly_alerts;

-- Query 6 — Highest risk users --
SELECT
    user_id,
    MAX(risk_score) AS max_score
FROM anomaly_alerts
GROUP BY user_id
ORDER BY max_score DESC
LIMIT 20;

-- Query 7 — Time trend --
SELECT
    HOUR(event_timestamp)
    AS hour_of_day,
    COUNT(*) AS total_alerts
FROM anomaly_alerts
GROUP BY hour_of_day
ORDER BY hour_of_day;