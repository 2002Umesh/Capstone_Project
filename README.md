# Capstone_Project
## Project Overview

The ParaBank Automation Testing Framework is an end-to-end web automation project developed to automate and validate the core banking functionalities of the ParaBank application. The framework is built using Selenium WebDriver with Java and follows the Cucumber Behavior-Driven Development (BDD) approach, enabling test scenarios to be written in a clear and business-readable format using Gherkin syntax.

The framework is designed using the Page Object Model (POM) architecture, which promotes code reusability, maintainability, and scalability by separating test logic from page-specific actions. Maven is used for dependency management and project build automation, while TestNG is integrated with Cucumber for test execution and lifecycle management.

To support DevOps practices, Jenkins is used for Continuous Integration (CI), allowing automated execution of test suites through pipelines whenever code changes are pushed to the repository. Docker is utilized to containerize the framework, ensuring consistent execution across different environments without dependency-related issues.

The framework automates critical banking workflows such as User Registration, Login, Account Creation, Fund Transfer, Bill Payment, Loan Request, Transaction Search, and Contact Information Management. Detailed execution results are generated through Extent Reports and Cucumber Reports, providing scenario-level insights, execution logs, screenshots, and test statistics.

This project demonstrates the implementation of a scalable test automation framework integrated with modern CI/CD and containerization technologies, making it suitable for enterprise-level automation testing practices.

### Key Highlights

* Selenium WebDriver automation using Java
* Cucumber BDD framework with Gherkin feature files
* Page Object Model (POM) architecture
* TestNG integration for execution management
* Maven-based build and dependency management
* Jenkins CI/CD pipeline integration
* Docker containerized test execution
* Extent Reports and Cucumber HTML Reports
* Automated screenshot capture for reporting
* Reusable, maintainable, and scalable framework design

### Modules Automated

* User Registration
* User Login
* Open New Account
* Fund Transfer
* Bill Payment
* Request Loan
* Find Transactions
* Update Contact Information

### Technology Stack

* Java
* Selenium WebDriver
* Cucumber BDD
* TestNG
* Maven
* Jenkins
* Docker
* Extent Reports
* Git & GitHub
