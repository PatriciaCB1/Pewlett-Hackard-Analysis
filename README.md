# Pewlett-Hackard-Analysis

## Resources

Software: PostgreSQL12 

## Overview of the analysis:

Our company, Pewlitt Hackard, was keen to better understand more about the upcoming retirement wave for its employees.  The company was also keen to develop a mentorship program to potentially retain certain employees eligible for retirement so they can train new hires.  

We were tasked with undertaking additional analysis as follows:

### Deliverable One
1) Create a Retirement Titles table that holds all the titles of current employees who were born between January 1, 1952 and December 31, 1955.
2) Create a table that contains the most recent title of each employee. 
3) Create a final table that details the number of retirement-age employees by most recent job title.

### Deliverable Two
1) Create a mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965.

## Results:

### Deliverable One Findings

### Retiring Titles
![Count_by_title_to_retire](https://github.com/PatriciaCB1/Pewlett-Hackard-Analysis/blob/main/Count_by_title.png)

- There is a total of 90,398 employees becoming eligible for retirement
- The titles with the highest counts for those eligible for retirement are: 
  - Senior Engineer: 29,414
  - Senior Staff: 28,254
- With so many senior employees due to retire there will be a significant loss of senior level skill.  Pewlitt Hackard may look to promote employees within or hire externally for these positions.  Senior employees typically command higher salaries so the departure of these senior employees (depending on how they are replaced), could have a positive impact on department P&L if lower salary replacements are hired/ promoted.
- There are only 2 managers retiring which is good for the stability of the organization and when onboarding new employees.
- Engineers have the highest total for those eligible for retirement - Total:  45,397 (includes senior engineers, engineers, assistant engineers).  With such a high level of engineers retiring this could slow plans for innovation. PH will want to ensure roles that become available are filled quickly with high quality candidates. 
### Deliverable Two Findings

### Mentorship Eligibility Table
![Mentorship_Eligibility_List](https://github.com/PatriciaCB1/Pewlett-Hackard-Analysis/blob/main/Mentorship_eligibility.png)

### Mentorship Eligibility Count by Title (pivot table created from CSV)
![Mentorship_Eligibility_By_Title](https://github.com/PatriciaCB1/Pewlett-Hackard-Analysis/blob/main/Mentorship_eligibility_by_title_counts.png)

- A total of 1549 employees eligible for retirement are also eligible for the mentorship program.  This represents 1.7% of employees eligible for retirement.
- The titles with the highest eligibility for the mentorship program are Senior Staff (411) and Engineer (383).
- Senior Engineers represent the highest count of all titles eligible for retirement with 29,414 set to retire, yet only 310 of these employees are eligible for the mentorship programme meaning, meaning even if all are retained in a mentorship capacity they would each need to mentor 95 employees on average. 
- Assistant Engineers have the lowest number of employees eligible for the mentorship program.

## Summary:

Our analysis has provided us with additional information on those set to become eligible for retirement, specifically by title.  We discovered that Senior Engineers and Senior Employees are the most impacted titles.  Our analysis surrounding the mentorship program has yielded a count of 1549 employees eligible for the mentorship program.  

In order to understand the impact of the upcoming wave of retirement, I would recommend we create tables reflecting the following:

1) A table reflecting actual salary summaries by department of those set to retire (to inform hiring budget and PNL) - salary query would need to be resolved.
2) A table identifying the tenure of Engineers not eligible to retire to see if any are eligible (based on tenure) for promotion to senior engineer.
