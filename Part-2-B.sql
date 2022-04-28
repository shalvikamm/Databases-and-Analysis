DROP TABLE Roles;
DROP TABLE Employees;
DROP TABLE Jobs;


CREATE TABLE Employees
(

        First_Name VARCHAR2(40),
        Last_Name VARCHAR2(40),
        Address VARCHAR2(40),

        CONSTRAINT Employee_PK
            PRIMARY KEY(First_Name, Last_Name)          
);

CREATE TABLE Jobs
(

        Job VARCHAR2(40),
        Salary NUMBER,
        Assistant VARCHAR(10),
        
        CONSTRAINT Job_PK
            PRIMARY KEY(Job)
                           
);

CREATE TABLE Roles
(
    
        First_Name VARCHAR2(40),
        Last_Name VARCHAR2(40),
        Job VARCHAR2(40),
        
        CONSTRAINT FK1
            FOREIGN KEY(First_Name, Last_Name)
                REFERENCES Employees(First_Name, Last_Name),
                
        CONSTRAINT FK2
            FOREIGN KEY(Job)
                REFERENCES Jobs(Job)
                           
);