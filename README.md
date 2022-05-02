# Pewlett Hackard Analysis

## Project Overview

Pewlett Hackard has a suspected large number of employees approaching retirement. This project determines the number of employees leaving based on title and department. With the large amount of talent leaving, it is important to identify employees with similar talent who can mentor the large number of new hires coming in to replace retiring employees. Employees eligible for the mentorship program have also been categorized by title and department.

PostgreSQL 11 and pgAdmin 4 were used for this analysis.</br>
All data files can be found [here.](https://github.com/skgolden13/Pewlett_Hackard_Analysis/tree/main/Data)</br>
All queries can be found [here](https://github.com/skgolden13/Pewlett_Hackard_Analysis/tree/main/Queries) with the queries used to generate tables for this report found [here.](https://github.com/skgolden13/Pewlett_Hackard_Analysis/blob/main/Queries/Employee_Database_Challenge.sql)

## Analysis Results

The analysis has revealed the following:
- A total of 72,458 employees can be expected to retire in the next five years
- Roughly 70% of these employees are in senior positions
- A total of 1,550 employees are eligible for the mentorship program
- Most of the employees eligible for the mentorship program have senior level titles

<p align="center">
  Table 1: Number of Employees Retiring by Title</br>
  <img width="225" alt="Retiring_titles" src="https://github.com/skgolden13/Pewlett_Hackard_Analysis/blob/main/Data/retiring_titles.PNG"></br>
</p>

<p align="center">
  Table 2: Employees Eligible for Mentorship Program</br>
  <img width="900" alt="Mentorship_eligibility" src="https://github.com/skgolden13/Pewlett_Hackard_Analysis/blob/main/Data/mentorship_eligibility.PNG"></br>
</p>

The full version of Table 2 can be found [here.](https://github.com/skgolden13/Pewlett_Hackard_Analysis/blob/main/Data/mentorship_eligibility.csv)

## Analysis Summary

As shown in Table 1, 72,458 positions will need to be filled as the "silver tsunami" takes effect with 1,550 employees eligible for the mentorship program as defined. With the sheer number of positions opening up, it is not feasible to limit the mentorship program to only employees born in 1965. Opening this program up to employees born earlier and even employees eligible for retirement would be beneficial.

It is also important to look at what departments are going to be the most effected by the "silver tsunami." Table 3 and Table 4 show the employees eligible for retirement and the mentorship program by department. The three departments with the most people eligible for retirement are arguably the three most important to the success of Pewlett Hackard:
- Development
- Production'
- Sales

Fortunately, the three departments with the most employees eligible for the mentorship program are the same. It should still be a priority to increase the number of employees eligible for the mentorship program, especially for these departments considering they make up 63.3% of all employees eligible for retirement.

<p align="center">
  Table 3: Number of Employees Retiring by Department</br>
  <img width="225" alt="retiring_dept_count" src="https://github.com/skgolden13/Pewlett_Hackard_Analysis/blob/main/Data/retiring_dept_count.PNG"></br>
</p>

<p align="center">
  Table 4: Number of Employees Eligible for Mentorship Program by Department</br>
  <img width="225" alt="mentor_dept_count" src="https://github.com/skgolden13/Pewlett_Hackard_Analysis/blob/main/Data/mentor_dept_count.PNG"></br>
</p>
