Feature: Registration_Module

  Background: Para Bank home page is open
    Given Para Bank home page is open

  @Smoke @Registration
  Scenario Outline: Validate Registration Functionality
    Given user clicks Register option
    When enters necessary credentials "<firstname>" "<lastname>" "<address>" "<city>" "<state>" "<zip>" "<phone>" "<ssn>" "<username>" "<password>" "<confirm_password>"
    And clicks register button
    Then validate registration result

    Examples:
      | firstname | lastname | address         | city     | state | zip   | phone      | ssn         | username  | password    | confirm_password |
      | John      | Doe      | 123 Main Street | New York | NY    | 10001 | 9876543210 | 123-45-6789 | johndoe46 | Password123 | Password123      |
