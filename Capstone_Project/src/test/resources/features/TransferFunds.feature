Feature: Transfer_Module

  Background: Para Bank home page is open
    Given Para Bank home page is open

  @Smoke @Regression @TransferFunds
  Scenario: Validate Transfer Functionality
    Given user enters username and password
    When clicks on login button
    And clicks on Transfer Funds link
    And enter amount to transfer
    And selects to and from account
    And clicks on transfer button
    Then validate transfer result
