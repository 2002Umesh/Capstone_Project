Feature: Loan_Module

  Background: Para Bank home page is open
    Given Para Bank home page is open

  @Smoke @Regression @RequestLoan
  Scenario Outline: Validate Loan Functionality
    Given user enters username and password
    When clicks on login button
    And clicks on Request Loan link
    And enter loan details "<loanAmount>" "<downPayment>"
    And clicks on apply now button
    Then validate loan result

    Examples:
      | loanAmount | downPayment |
      | 50         | 5           |
