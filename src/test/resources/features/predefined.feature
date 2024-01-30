@predefined
Feature: Smoke steps

  @predefined1
  @regression
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then I type "Cucumber" into element with xpath "//textarea[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    # Then I wait for 2 sec
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then I should see page title contains "Cucumber - Google Search"
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"

  Scenario: Predefined steps for Google page
    Given I open url for "google search engine"
    Then I should see page title as "Google"
    Then I type "Cucumber" into "search textfield"
    Then I click "search button"
  # Then I wait for 2 sec
    Then I wait for "results" to be present
    Then I should see page title contains "- Google Search"
    Then "results" should contain text "Cucumber"
    And I check final result

  Scenario: Predefined steps for Google page
    Given I open url for "google search engine"
    Then I should see page title as "Google"
    Then I type "Cucumber" into "search textfield"
    Then I click "search button"
  # Then I wait for 2 sec
    Then I wait for "results" to be present
    Then I should see page title contains "- Google Search"
    Then "results" should contain text "Cucumber"
    And I check final result


  @bing
  Scenario: Bing test for cucumber
    Given I open url "https://www.bing.com/"
    Then I should see page title as "Bing"
    Then I type "Cucumber" into element with xpath "//*[@name='q']"
    Then I click on element using JavaScript with xpath "//label[@id='search_icon']"
#    Then I wait for 2 sec
    Then I wait for element with xpath "//main[@aria-label='Search Results']" to be present
    Then I should see page title as "Cucumber - Search"
    Then element with xpath "//main[@aria-label='Search Results']" should contain text "Cucumber"

  @yahoo
  Scenario: Yahoo test for cucumber
    Given I open url "https://www.yahoo.com/"
    Then I should see page title as "Yahoo | Mail, Weather, Search, Politics, News, Finance, Sports & Videos"
    Then I type "Cucumber" into element with xpath "//*[@id='ybar-sbq']"
    Then I click on element using JavaScript with xpath "//button[@type='submit']"
#    Then I wait for 2 sec
    Then I wait for element with xpath "//*[@id='ybar-sbq']" to be present
    Then I should see page title as "Yahoo | Mail, Weather, Search, Politics, News, Finance, Sports & Videos"
    Then I wait for element with xpath "//h3[contains(text(),'Cucumber - Yahoo Recipe Search')]" to be present
    Then  element with xpath "//h3[contains(text(),'Cucumber - Yahoo Recipe Search')]" should contain text "Cucumber - Yahoo Recipe Search"


   @gibiru
   Scenario: Gibiru scenario
     Given I open url "https://gibiru.com/"
     And element with xpath "//div/*[contains(text(), 'Mobile App')]" should be displayed
     Then I type "Behavior Driven Development" into element with xpath "//input[@id='q']"
     Then I click on element using JavaScript with xpath "//button[@type='submit']"
     Then element with xpath "//div[@id='web-results']" should contain text "Cucumber"
     Then I wait for 3 sec


  @e2e_htc
  Scenario: HTC e2e scenario
    Given I open url "https://nop-qa.portnov.com/"
    Then element with xpath "//*[contains(text(), 'Featured products')]/../..//a[contains(text(), 'HTC')]" should be displayed
    Then I click on element using JavaScript with xpath "//*[contains(text(), 'Featured products')]/../..//a[contains(text(), 'HTC')]"
    Then element with xpath "//div[contains(@class, 'product-review-links')]" should not contain text "0"
    Then I clear element with xpath "//input[@aria-label='Enter a quantity']"
    Then I type "3" into element with xpath "//input[@aria-label='Enter a quantity']"
    Then I click on element with xpath "//div[contains(@class, 'overview')]//button[contains(text(), 'Add to cart')]"
    And I wait for element with xpath "//div[contains(@class, 'bar-notification')][contains(@class, 'success')]" to be present
    And element with xpath "//div[contains(@class, 'bar-notification')][contains(@class, 'success')]" should contain text "added"
    And I wait for 3 sec
    And I click on element with xpath "//a/span[contains(text(), 'Shopping cart')]"
    And element with xpath "//td[contains(@class, 'subtotal')]/span" should contain text "$735.00"
    Then I wait for 2 sec

#    Then  element with xpath "//h3[contains(text(),'Cucumber - Yahoo Recipe Search')]" should contain text "Cucumber - Yahoo Recipe Search"
  @e2e_Apple
  Scenario: Apple macbook e2e scenario
      Given I open url "https://nop-qa.portnov.com/"
      Then element with xpath "//strong[contains(text(),'Featured products')]" should be displayed
      Then I wait for 2 sec
      Then I click on element using JavaScript with xpath "//a[contains(text(),'Apple MacBook Pro 13-inch')]"
      Then element with xpath "//div[contains(@class, 'product-review-links')]" should not contain text "0"
      Then I clear element with xpath "//input[@id='product_enteredQuantity_4']"
      Then I type "2" into element with xpath "//input[@id='product_enteredQuantity_4']"
      Then I click on element with xpath "//button[@id='add-to-cart-button-4']"
      And I wait for element with xpath "//div[@id='bar-notification']" to be present
      And I wait for 2 sec
      And I click on element with xpath "//a[contains(text(),'shopping cart')]"
      And element with xpath "//tbody/tr[1]/td[6]/span[1]" should contain text "$3,600.00"

  @nop_order
  Scenario: Nop order test scenario
    Given client open main page
    Then main page title should be displayed
    When client click "HTC" item
    Then client should see reviews with at least 1 review
    When client set items quantity to "3"
    And client click add to cart button
    And I wait for 3 sec
    Then client should see added to cart notification
    And I wait for 3 sec
    When client opens shopping cart
    Then items total amount shoud be "$735.00"

    @e2e_Register
    Scenario: Register e2e Scenario
      Given I open url "https://nop-qa.portnov.com/"
#      Then I wait for 2 sec
      Then element with xpath "//h2[contains(text(),'Welcome to our store')]" should be displayed
      Then I click on element with xpath "//a[contains(text(),'Register')]"
      Then I wait for 2 sec
      Then I click on element using JavaScript with xpath "//h1[contains(text(),'Register')]"
      Then I click on element using JavaScript with xpath "//strong[contains(text(),'Your Personal Details')]"
      Then element with xpath "//label[contains(text(),'Gender:')]" should be displayed
      Then I wait for 2 sec
      Then I click on element with xpath "//input[@id='gender-female']"
#      And I click on element with xpath "//input[@id='firstName']"
      Then I type "Jesna" into element with xpath "//input[@id='FirstName']"
      Then I type "Shijas" into element with xpath "//input[@id='LastName']"
#      Then I wait for 2 sec
      Then element with xpath " //label[contains(text(),'Date of birth:')]" should be displayed
#      Then I type "1" into element with xpath "//body/div[6]/div[3]/div[1]/div[1]/div[1]/div[2]/form[1]/div[1]/div[2]/div[4]/div[1]/select[1]"
      Then I type "1" into element with xpath "//select[@name='DateOfBirthDay']"
      Then I type "1" into element with xpath "//select[@name='DateOfBirthMonth']"
      Then I type "1" into element with xpath "//select[@name='DateOfBirthYear']"
#      Then I type "Jan" into element with xpath "//body/div[6]/div[3]/div[1]/div[1]/div[1]/div[2]/form[1]/div[1]/div[2]/div[4]/div[1]/select[1]"
#      Then I type "1987" into element with xpath "//body/div[6]/div[3]/div[1]/div[1]/div[1]/div[2]/form[1]/div[1]/div[2]/div[4]/div[1]/select[1]"
      Then element with xpath "//label[contains(text(),'Email:')]" should be displayed
      Then I type "testing@123.com" into element with xpath "//input[@id='Email']"
      Then element with xpath "//label[contains(text(),'Company name:')]" should be displayed
      Then I type "Portnov" into element with xpath "//input[@id='Company']"
      And I wait for 8 sec
      And I take screenshot
      Then element with xpath "//strong[contains(text(),'Your Password')]" should be displayed
      Then I type "testing123" into element with xpath "//input[@id='Password']"
      Then I type "testing123" into element with xpath "//input[@id='ConfirmPassword']"
      Then I click on element with xpath "//button[@id='register-button']"

      Then I wait for 3 sec
  
#      Then I click on element with xpath "//body/div[6]/div[3]/div[1]/div[1]/div[1]/div[2]/form[1]/div[5]"
      















      









