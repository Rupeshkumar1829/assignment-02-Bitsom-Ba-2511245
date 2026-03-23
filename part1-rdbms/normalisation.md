4"}
## Anomaly Analysis

### Insert Anomaly
If a new product needs to be added but no order exists yet, it cannot be inserted easily because all data is stored in one table.

### Update Anomaly
If a customer's information like city changes, it must be updated in multiple rows which can lead to inconsistency.

### Delete Anomaly
If the last order of a customer is deleted, the customer's information may also be lost.

## Normalization Justification

To solve these issues, the dataset is divided into separate tables such as Customers, Products, Orders, and Order_Items. This structure follows Third Normal Form (3NF) which reduces redundancy and improves data integri
