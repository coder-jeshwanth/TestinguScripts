#!/bin/bash

# Read salary and age
read -p "Enter salary: " salary
read -p "Enter age: " age

# Tax calculation
if [ $salary -lt 15000 ]; then
    tax=0
elif [ $salary -eq 15000 ]; then
    tax=$(echo "$salary * 0.02" | bc)
elif [ $salary -le 30000 ]; then
    tax=$(echo "$salary * 0.05" | bc)
else
    tax=$(echo "$salary * 0.10" | bc)
fi

# Age category
if [ $age -lt 13 ]; then
    category="Child"
elif [ $age -ge 13 ] && [ $age -le 19 ]; then
    category="Teenager"
else
    category="Adult"
fi

# Net salary after tax
net_salary=$(echo "$salary - $tax" | bc)

# Output results
echo "Salary: $salary"
echo "Tax: $tax"
echo "Net Salary: $net_salary"
echo "Age: $age"
echo "Category: $category"

