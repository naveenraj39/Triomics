

Feature: Login to EDC
  User want to login

Background: 
     * driver serverBaseUrl + '/login'
  @Regression
  Scenario: Login with valid credentials
    Given driver 'https://data.stag.triomics.in/login'
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
    
    Then mouse("//div[@class='MuiGrid-root MuiGrid-container MuiGrid-item MuiGrid-grid-xs-10 MuiGrid-grid-sm-10']").click()
    And click("//span[normalize-space()='Build Study']")
    * waitUntil("document.readyState == 'complete'")
    And click("//span[normalize-space()='Basic Details']")
    Then click("//span[normalize-space()='Site Selection']")
    And click("//*[text()='Add Site']")
    * delay(5000)
    And mouse("//*[text()='Cancel']").click()
    * delay(3000)
    # UAM
   
    Then mouse("//span[normalize-space()='User Access Management']").click()
    And click("//span[normalize-space()='Add User']")
    Then input("//*[@type='text']", "Naveen")
    * delay(3000)
    And clear("//*[@type='text']")
    * delay(4000)
    Then click("//*[text()='Add New Member']")
    * delay(4000)
    And mouse("//*[text()='Cancel']").click()
    # Permission Access

    Then mouse("//span[normalize-space()='User Access Management']").click()
    And mouse("/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[2]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[5]/div[1]/button[1]").click()
    And mouse("//span[normalize-space()='Site Level']").click()
    And mouse("//span[normalize-space()='Edit']").click()
    * delay(3000)
    Then mouse("//*[@aria-haspopup='listbox']").click()
    * delay(10000)
    
    

