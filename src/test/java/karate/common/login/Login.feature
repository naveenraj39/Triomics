#Author: rohit@triomics.in
#Keywords Summary : Common reusable login features

Feature: Login to Ignition console
  A uer tries to login to ignition console

	Background:
	
	@SmokeTest
  Scenario: Valid Login
  
   Given driver 'https://data.stag.triomics.in'
    * waitUntil("document.readyState == 'complete'")
    When input("//*[@type='text']", "alit.edc@mailinator.com")
    And mouse('.MuiButton-label').click()
    * waitUntil("document.readyState=='complete'")
    Then input('input[type=password]', 'Hello@123')
    And mouse('.MuiButton-label').click()
    And waitForUrl('https://data.stag.triomics.in/sites')
    * waitUntil("document.readyState == 'complete'")
    And input("//*[@type='text']", "Dr. Alit EDC")
    * screenshot()
    * delay(4000) 
    * waitUntil("document.readyState == 'complete'")
    Then waitForEnabled("div[class='MuiGrid-root MuiGrid-container MuiGrid-item MuiGrid-justify-content-xs-center'] div:nth-child(1) div:nth-child(1) div:nth-child(3)").click()
    * waitUntil("document.readyState == 'complete'")
    * screenshot()
    And print driver.title
    # Study Build 
    
   