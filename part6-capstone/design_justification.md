Storage Systems

In this architecture, different storage systems are selected based on the nature of data and the four key goals of the hospital.

For predicting patient readmission risk, a Data Lake is used to store raw historical patient data from EHR systems, ICU devices, and billing systems. This allows flexible storage of structured and unstructured data. Processed and structured data is then moved into a Data Warehouse, which supports efficient querying and is used to train the ML model for readmission prediction.

For doctor queries in plain English, a Patient History Database (SQL-based OLTP system) is used to store structured medical records. Additionally, a Vector Database is used to store embeddings of doctor notes and unstructured text. This enables the NLQ (Natural Language Query) Interface to retrieve relevant information quickly and accurately.

For monthly reports, the Data Warehouse is the primary storage system. It is optimized for analytical queries like bed occupancy trends and department-wise cost analysis. This ensures fast and reliable reporting through dashboards.

For real-time ICU vitals, a Real-Time Vitals Storage system (stream-based storage) is used. Data from ICU devices is ingested via stream processing and stored for immediate access. This supports real-time monitoring and alert generation.

⸻

OLTP VS OLAP Boundary

The system clearly separates transactional (OLTP) and analytical (OLAP) workloads.

The OLTP layer includes systems like the EHR system, Patient History Database (MySQL), and Billing System, where real-time transactions occur. These systems are optimized for fast inserts, updates, and queries related to day-to-day hospital operations.

The boundary between OLTP and OLAP begins at the Data Ingestion layer (ETL pipeline). Here, data is extracted from transactional systems, cleaned, and transformed.

The OLAP layer consists of the Data Lake and Data Warehouse, where data is stored for analysis rather than transactions. This layer supports machine learning models, reporting dashboards, and analytics.

By separating OLTP and OLAP, the system ensures that operational performance is not affected by heavy analytical queries, improving overall efficiency and scalability.

⸻

Trade-offs

One significant trade-off in this design is between real-time processing and system complexity.

To support real-time ICU monitoring and alerts, the system uses stream processing and real-time storage, which increases architectural complexity and maintenance effort. Managing both batch (ETL) and stream pipelines requires more resources and careful synchronization.

To mitigate this, a hybrid approach is used:
	•	Critical data (ICU vitals) is processed in real-time for alerts.
	•	Less time-sensitive data (reports, model training) is handled using batch processing.

Additionally, using managed cloud services (like managed streaming and storage solutions) can reduce operational overhead and improve reliability.

This balance ensures that the system meets real-time requirements without making the architecture unnecessarily complex or costly.
