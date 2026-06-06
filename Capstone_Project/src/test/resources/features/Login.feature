Feature: Login_Module

  Background: Para Bank home page is open
    Given Para Bank home page is open

  @Smoke @Regression @Login
  Scenario: Validate Login Functionality
    Given user enters username and password
    When clicks on login button
    Then validate login result
