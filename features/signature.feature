Feature: Genarating Signature for API request
Scenario: succesufully genarated signature 
Given  I have generated  secret-key using passPhrase
And I enter a valid timestamp
When I genarate the signature for request body "entity:SFH"
Then succesfully get the signature 




Feature:Receiving Server Time from API
Scenario:Succesufully receiving Server Time from get request
Given I am using url http://localhost:9095/getServerTime

When I use GET request with /getServerTime
Then I received success response with server time
