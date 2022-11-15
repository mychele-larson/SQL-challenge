## SQL CHALLENGE
SQL Homework Assignment

Module 9 Challenge
Due Nov 30 by 11:59pm Points 100 Submitting a text entry box or a website url
Background
It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modeling, data engineering, and data analysis, respectively.

Before You Begin
Create a new repository for this project called sql-challenge. Do not add this assignment to an existing repository.

Clone the new repository to your computer.

Inside your local Git repository, create a directory for this Challenge. Use a folder name that corresponds to the Challenge, such as EmployeeSQL.

Note that you’ll add your files to this folder and push the changes to GitHub.

Files
Download the following files to help you get started:

Module 9 Challenge files

Instructions
This Challenge is divided into three parts: data modeling, data engineering, and data analysis.

Data Modeling
Inspect the CSV files, and then sketch an ERD of the tables. To create the sketch, feel free to use a tool like QuickDBD Links to an external site..

Data Engineering
Use the provided information to create a table schema for each of the six CSV files. Be sure to do the following:

Remember to specify the data types, primary keys, foreign keys, and other constraints.

For the primary keys, verify that the column is unique. Otherwise, create a composite key Links to an external site., which takes two primary keys to uniquely identify a row.

Be sure to create the tables in the correct order to handle the foreign keys.

Import each CSV file into its corresponding SQL table.

HINT
Data Analysis
List the employee number, last name, first name, sex, and salary of each employee.

List the first name, last name, and hire date for the employees who were hired in 1986.

List the manager of each department along with their department number, department name, employee number, last name, and first name.

List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

List each employee in the Sales department, including their employee number, last name, and first name.

List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

Bonus
As you examine the data, you begin to suspect that the dataset is fake. Maybe, your boss gave you spurious data to test the data engineering skills of a new employee? To confirm your hunch, you decide to create a visualization of the data to present to your boss. To do so, complete the following steps:

Import the SQL database into Pandas. (Although you could read the CSV files directly in Pandas, you’re trying to prove your technical resourcefulness.) Note that this step might require some research. Feel free to use the following code to get started (where <your_db_name> is your database name):

from sqlalchemy import create_engine
engine = create_engine('postgresql://localhost:5432/<your_db_name>')
connection = engine.connect()
NOTE
For more information about the create_engine function, see the SQLAlchemy documentation Links to an external site..

If you’re using a password, don’t upload it to your GitHub repository. For more information, review the Oops! I Committed My Password To GitHub! Links to an external site.video and Ignoring files Links to an external site.in GitHub Docs.

Create a histogram to visualize the employee salary ranges that were the most common.

Create a bar chart of average salary by title.

Submission
Before submitting your Challenge assignment, make sure that you’ve done the following:

Create an image file of your ERD.

Create a .sql file of your table schemata.

Create a .sql file of your queries.

(Optional) Create a Jupyter notebook of the bonus analysis.

Ensure that your repository has regular commits and a thorough README.md file.

To submit your Challenge assignment, click Submit, and then provide the URL of your GitHub repository for grading.

NOTE
You are allowed to miss up to two Challenge assignments and still earn your certificate. If you complete all Challenge assignments, your lowest two grades will be dropped. If you wish to skip this assignment, click Next, and move on to the next module.

Comments are disabled for graded submissions in Bootcamp Spot. If you have questions about your feedback, please notify your instructional staff or your Student Success Manager. If you would like to resubmit your work for an additional review, you can use the Resubmit Assignment button to upload new links. You may resubmit up to three times for a total of four submissions.

Rubric
Module 9 Challenge RubricLinks to an external site.

References
Data generated by Mockaroo, LLC Links to an external site., (2022). Realistic Data Generator.

