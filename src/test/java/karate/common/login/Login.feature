#Author: rohit@triomics.in
#Keywords Summary : Common reusable login features
@SmokeTest @RegressionTest
Feature: Login to Ignition console
  A uer tries to login to ignition console

	Background:
	* driver serverBaseUrl + '/login'

	@SmokeTest @RegressionTest
  Scenario: Valid Login
  Given path 'login'
   * waitUntil("document.readyState == 'complete'")
	 And input('[type=email]', 'naveenraj@triomics.in')
   And input('[type=password]', 'Hello@123')
	 And click('{p}Login')
   * waitUntil("document.readyState == 'complete'")
   And waitFor('{span}Select')
   And mouse('input[class=MuiSelect-nativeInput]').click()
   And mouse('{span}Test- Naveen-EC1').click()
   And click('{p}Get Started')
	 And waitForUrl('/dashboard')