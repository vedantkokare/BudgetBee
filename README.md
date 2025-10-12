🐝 BudgetBee – Smart Expense Tracker

BudgetBee is a lightweight and user-friendly expense tracker built with Java Spring Boot, JSP, and MySQL. It helps individuals and small businesses manage their income, expenses, and budgets efficiently with a clean and responsive dashboard.

🚀 Features

📊 Track Income & Expenses – Record daily transactions in just a few clicks.

🟢 Credit & 🔴 Debit Separation – Clearly see whether money is incoming or outgoing.

💰 Automatic Totals – View the total credited and debited amounts instantly.

📅 Date & Category Management – Organize transactions by date, category, and payment type.

🎨 User-Friendly Dashboard – Clean UI with color-coded amounts for better visibility.

🌐 Responsive Design – Works across desktop and mobile devices.

🛠 Secure & Scalable – Powered by Spring Boot & MySQL.

🖥️ Tech Stack

Backend: Java, Spring Boot, JDBC

Frontend: JSP, HTML5, CSS3, Bootstrap

Database: MySQL

Version Control: Git & GitHub

📂 Project Structure
BudgetBee/
│-- src/main/java/com/rt/          # Java source files (controllers, services, entities)
│-- src/main/webapp/WEB-INF/       # JSP pages (views)
│-- pom.xml                        # Maven dependencies
│-- README.md                      # Project documentation

🛠 Application Requirements

JDK: 1.8

Tomcat: 7

Database: MySQL

⚡ How to Get & Run the Project
1. Clone the Repository
git clone https://github.com/vedantkokare/BudgetBee.git

2. Import into IDE

Import the project into Eclipse, STS, or any Java IDE that supports Maven projects.

3. Configure Database in spring-servlet.xml
<bean id="ds" class="org.springframework.jdbc.datasource.DriverManagerDataSource">
    <property name="driverClassName" value="com.mysql.jdbc.Driver"/>
    <property name="url" value="jdbc:mysql://localhost:3306/budget-bee"/>
    <property name="username" value="your_username"/> 
    <property name="password" value="your_password"/> 
</bean>


Replace your_username and your_password with your MySQL credentials.

Make sure you have created the database budget-bee in MySQL:

CREATE DATABASE `budget-bee`;

4. Build the Project
mvn clean install

5. Run on Server

Add Tomcat 7 in your IDE.

Right-click on the project → Run As → Run on Server.

Select your Tomcat 7 server and start it.

6. Access the Application

Open a browser and go to:

http://localhost:8080/BudgetBee

🎯 Use Cases

Students – Manage daily pocket money.

Professionals – Track monthly income & expenses.

Small Businesses – Monitor sales, purchases, and profits.

🔍 SEO Keywords

Java Expense Tracker

Spring Boot Budget Management System

Personal Finance Tracker

Income & Expense Management App

MySQL Finance Tracking Project

🤝 Contribution

Contributions are welcome! Feel free to:

Open issues

Submit pull requests

Suggest new features
