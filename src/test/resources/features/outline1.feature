Feature: Scenario outline1 example

  Scenario Outline: nopCommerce tests with datasets

    Given I open url "https://nop-qa.portnov.com"
    Then I click on element with xpath "//a[contains(text(),'Register')]"
    Then I wait for 2 sec
    Then I should see page title as "Your store. Register"
    And I click on element using JavaScript with xpath "//input[@id='gender-female']"
    Then I wait for 5 sec
    Then I enter "<firstname>" into the field with xpath "//input[@id='FirstName']"
#    And I enter '<firstname>' into the field with xpath "//input[@id='FirstName']"
    And I enter "<lastname>" into the field with xpath "//input[@id='LastName']"
    And I enter "<email>" into the field with xpath "//input[@id='Email']"
    And I enter "<companyname>" into the field with xpath "//input[@id='Company']"
    And I enter "<password>" into the field with xpath "//input[@id='Password']"
    And I enter "<password>" into the field with xpath "//input[@id='ConfirmPassword']"
    And I click on element with xpath " //button[@id='register-button']"
    Examples:
      | firstname | lastname | email | companyname | password |
      | Ashmi     | shijas   |test@123.com| portnov | 67890 |
      | Jesna     | shijas   |test@abc.com| hello   | 12345 |