Here are the rules Karate uses on bootstrap (before every Scenario or Examples row in a Scenario Outline):

if the system-property karate.config.dir was set, Karate will look in this 
folder for karate-config.js - and if found, will process it
else if karate-config.js was not found in the above location 
(or karate.config.dir was not set), classpath:karate-config.js would be processed (this is the default / common case)
if the karate.env system property was set
if karate.config.dir was set, Karate will also look for file:
<karate.config.dir>/karate-config-<env>.js
else (if the karate.config.dir was not set), Karate will look for classpath:karate-config-<env>.js
if the over-ride karate-config-<env>.js exists, it will be processed,
 and the configuration (JSON entries) returned by this function will over-ride any set by karate-config.js
 
 
 
 you can use the karate.properties['some.name'] syntax for getting a system property passed
  via JVM options in the form -Dsome.name=foo.
  
  
  https://karatelabs.github.io/karate/karate-core/#locators
  
  #Selector
  https://developer.mozilla.org/en-US/docs/Web/API/Document/querySelector