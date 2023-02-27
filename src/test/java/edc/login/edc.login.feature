@SmokeTest @RegressionTest
Feature: Login to Ignition console
  A uer tries to login to ignition console

	Background:
	* driver serverBaseUrl + '/login'

	@SmokeTest @RegressionTest
  Scenario: Valid Login
  Given path 'login'
   * waitUntil("document.readyState == 'complete'")