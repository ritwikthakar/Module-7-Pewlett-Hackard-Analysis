# Module-7-Pewlett-Hackard-Analysis
## Overview of the analysis
The purpose of this analysis is to determine the number of retiring employees per title and identify employees who are eligible to participate in a mentorship program. The final step will be to create a report that summarizes our analysis and help PH prepare for the “silver tsunami” as many current employees reach retirement age.
## Results
- After joining tables employee & titles and filtering to birth dates in 1952-1955, the instructions in the challenge walk you using partitioning the data to find and remove unwanted duplicate rows.
![Unique Titles]()
- A total of 90,398 titles are retiring from PH this year
- 32.5% of Senior engineers and 31.2% of senior staff seem to the titles retiring from PH.
![Retiring Titles](https://github.com/ritwikthakar/Module-7-Pewlett-Hackard-Analysis/blob/main/Resources/Retiring%20Titles.PNG)
- Currently a total of 1549 existing employees are currently eligible for the mentorship program to fill in these retiring titles
![Mentorship Eligibility](https://github.com/ritwikthakar/Module-7-Pewlett-Hackard-Analysis/blob/main/Resources/Mentorship.PNG)
## Summary
To bolster the mentorship program, I would make the following queries to the database.
- We can create a new table from the mentorship eligibility table to see the title of existing employees currently eligible for the mentorship program to see how many employees can be groomed from within PH. We can use the Count and Group by function to achieve this.
![Rec_1](https://github.com/ritwikthakar/Module-7-Pewlett-Hackard-Analysis/blob/main/Resources/Rec%201.PNG)

- Additionally, we can explore how long these employees have been in their current roles and get the potential proteges identified for the potential mentors we have already found. We can join Employee No., first name, last name from employees table and title & from date from the titles table and use condition where hire date is between 1985-01-01 and 1995-12-31 to get a list of the most experienced employees in PH
![Rec_2](https://github.com/ritwikthakar/Module-7-Pewlett-Hackard-Analysis/blob/main/Resources/Rec%202.PNG)
