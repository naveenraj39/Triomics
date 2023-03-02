
@Regression @SmokeTest
Feature: Login to EDC
  User want to login

Background: 
  @Regression @SmokeTest
  Scenario: Login with valid credentials
    Given driver 'https://data.stag.triomics.in/login'
    * waitUntil("document.readyState == 'complete'")
    When input("//*[@type='text']", "alit.edc@mailinator.com")
    And mouse('.MuiButton-label').click()
    * waitUntil("document.readyState=='complete'")
    Then input('input[type=password]', 'Hello@123')
    And mouse('.MuiButton-label').click()
    And waitForUrl('https://data.stag.triomics.in/sites')
    And input("//*[@type='text']", "Dr.Alit")
    Then click("//*[@class='MuiSvgIcon-root']")
    

