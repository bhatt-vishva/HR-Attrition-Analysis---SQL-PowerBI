import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

# Load the data
employees = pd.read_csv('employees.csv')
satisfaction = pd.read_csv('employee_satisfaction.csv')
attrition = pd.read_csv('attrition.csv')

# Merge datasets
data = employees.merge(satisfaction, on='EmployeeID').merge(attrition, on='EmployeeID')

# Display first few rows
print(data.head())

# Check for missing values
print(data.isnull().sum())

# Visualize attrition distribution
sns.countplot(x='Attrition', data=data)
plt.title('Attrition Distribution')
plt.show()

# Visualize correlations
corr_matrix = data.corr()
sns.heatmap(corr_matrix, annot=True, cmap='coolwarm')
plt.title('Correlation Matrix')
plt.show()

# Box plot of Monthly Income vs Attrition
sns.boxplot(x='Attrition', y='MonthlyIncome', data=data)
plt.title('Monthly Income vs Attrition')
plt.show()

# Bar plot of Job Satisfaction vs Attrition
sns.barplot(x='JobSatisfaction', y='Attrition', data=data)
plt.title('Job Satisfaction vs Attrition')
plt.show()
