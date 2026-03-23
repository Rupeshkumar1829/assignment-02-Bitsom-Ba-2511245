## ETL Decisions

### Decision 1 – Standardizing Date Formats

Problem:  
The raw data contained multiple date formats such as DD-MM-YYYY and YYYY/MM/DD which created inconsistency during analysis.

Resolution:  
All dates were converted into a standardized format (YYYY-MM-DD) before loading into the data warehouse. This ensures consistent date processing and easier querying.



### Decision 2 – Handling NULL Values

Problem:  
Some records had missing values in fields such as product category and store name.

Resolution:  
Missing values were replaced with default placeholders such as "Unknown" or filled using available reference data before loading into dimension tables.



### Decision 3 – Category Case Standardization

Problem:  
Product categories appeared in different letter cases such as "electronics", "Electronics", and "ELECTRONICS".

Resolution:  
All category values were converted into a consistent format (Title Case) before inserting into the dim_product table to ensure accurate grouping in analytical queries.
