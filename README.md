# Data Store Design and Implementation
Authors: Dilni De Silva, Thiem Quyen

## Overview
The database solution presented in this report is for a small retail company named Beauty Co. (not a real company)- an Australian online cosmetic retailer startup. They sell cosmetics to customers who live in Australia. Due to its small size, the company is located in one building with 5 floors. Hence the company needs a place to keep all data from staff members and customers, thus having a database with 6 strong entries and 8 weak entities store the appropriate data, where now the company can access all necessary information. 

## Description of the Database usage 
The database stores information within the company as well as its operations, including:  
●	Employees’ personal and contact information, as well as their work-related information.  
●	Information on departments and work positions within the company.  
●	Information on customers and suppliers, and retail and wholesale orders.  
●	can be used to calculate pay, and allocate work shifts.  
●	can be used to calculate order total and revenue and expenses within the company.   
●	can help identify trends in customers' shopping habits.  

## Entity Relationship Design in UML
●	All the entities and attribute names use snake case (underscore).  
●	Entities are capitalised in the first word. In most cases, the attributes are prefixed with parts of the table's name unless the attribute is referencing another table.  
●	The strong entities are in blue.  
●	The weak entities are in white.  
![image](https://github.com/dtquyen1199/Data/assets/88473863/20cfe67c-3f13-4aee-bace-a0c15d91264c)
![image](https://github.com/dtquyen1199/Data/assets/88473863/a03260d3-e20f-4277-bebd-ad0717c408dd)


