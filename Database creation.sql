CREATE DATABASE EmployeeAttritionDB;

USE EmployeeAttritionDB;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Age INT,
    BusinessTravel VARCHAR(50),
    Department VARCHAR(50),
    DistanceFromHome INT,
    Education VARCHAR(50),
    EducationField VARCHAR(50),
    Gender VARCHAR(10),
    JobRole VARCHAR(50),
    MaritalStatus VARCHAR(50),
    MonthlyIncome DECIMAL(10, 2),
    NumCompaniesWorked INT,
    OverTime VARCHAR(10),
    TotalWorkingYears INT,
    YearsAtCompany INT,
    YearsInCurrentRole INT,
    YearsSinceLastPromotion INT,
    YearsWithCurrManager INT
);

CREATE TABLE EmployeeSatisfaction (
    EmployeeID INT,
    EnvironmentSatisfaction INT,
    JobSatisfaction INT,
    RelationshipSatisfaction INT,
    WorkLifeBalance INT,
    PerformanceRating INT,
    PRIMARY KEY (EmployeeID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

CREATE TABLE Attrition (
    EmployeeID INT,
    Attrition VARCHAR(10),
    PRIMARY KEY (EmployeeID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
