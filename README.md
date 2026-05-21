# Real-Time E-Commerce Anomaly Detection Pipeline using Kafka & MySQL

## Project Overview

Modern e-commerce platforms generate millions of user activity events such as product views, cart additions, logins, and purchases. Detecting suspicious or abnormal behavior in real time is important for preventing fraudulent activities, account misuse, and unusual purchasing behavior.

This project simulates a **real-time streaming anomaly detection pipeline** using **Apache Kafka**, **Python**, and **MySQL** to detect suspicious user behavior patterns in e-commerce events.

The system generates synthetic real-time events, streams them through Kafka, applies rule-based anomaly detection using a sliding window approach, stores anomalies into MySQL, and creates business analytics dashboards.

---

## Business Problem

Traditional batch systems detect anomalies after delays.

This project focuses on:

- **Real-time event streaming**
- **Low-latency anomaly detection**
- **Behavior-based risk scoring**
- **Streaming analytics pipeline**

The goal is to identify suspicious user activities such as:

- Rapid purchases
- Purchase without browsing
- Logged-out purchases
- Price spikes
- Fast checkout behavior
- Unusual location changes
- Suspicious purchase intensity

---

## Project Architecture

```text
Synthetic Event Generator (Producer)
                ↓
         Kafka Topic
         (user_events)
                ↓
      Real-Time Consumer
     (Anomaly Detection)
                ↓
        Risk Scoring Engine
                ↓
       MySQL Persistence
                ↓
       Dashboard Analytics
