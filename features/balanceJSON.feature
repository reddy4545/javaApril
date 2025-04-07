Feature:Receiving Balance entities from API
Scenario:Succesufully receiving balance entities from get request
Given I am using url http://localhost:9095/api/balances 
And I enter the valid API-KEY ,signature,timestamp
"""
curl -X GET http://localhost:9095/api/balances \
-H "Content-Type: application/json" \
-H "X-API-KEY: <api_key>" \
-H "X-SIGNATURE: <signature>" \
-H "X-TIMESTAMP: 1734547114593" \

"""
When I sent the request
Then I received success response with balance_data
And the response body should contain balance data
"""
 "asset" ,"available", "total", "currency"
  "BTC",     0.04000,   0.04000    "BTC"
  "USD"     6.35000,  6.35000     "USD"
  "ETH"    -0.3525,  -0.3525       "ETH"
            
           
"""
Scenario: Succesufully receiving balance_data of specific entity
Given Request 
"""
curl -X POST http://localhost:9095/api/balance \
-H "Content-Type: application/json" \
-H "X-API-KEY: <api_key>" \
-H "X-SIGNATURE: <signature>" \
-H "X-TIMESTAMP: 1734547114593" \
-d "{\"entity\": \"data-provider-1\"}"
"""
And signature, timestamp generated
And api key
When the request is sent
Then return the balance of specific entity related to the requester
