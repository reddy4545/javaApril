Feature:Receiving Balance entities from API
Scenario:Succesufully receiving balance entities from get request
Given I am using url http://localhost:9095/api/balances 
And I enter the valid API-KEY ,signature
when I use GET request with /api/balances
Then I received success response with balnce_data
And the response body should contain balance data for data-provider-1
"""
 "asset" ,"available", "total", "currency"
  "BTC",     0.04000,   0.04000    "BTC"
  "USD"     6.35000,  6.35000     "USD"
  "ETH"    -0.3525,  -0.3525       "ETH"
            
            {
                    "asset": "BTC",
                    "available": 0.04000,
                    "total": 0.04000,
                    "currency": "BTC"
                },
                {
                    "asset": "USD",
                    "available": 6.35000,
                    "total": 6.35000,
                    "currency": "USD"
                },
                {
                    "asset": "ETH",
                    "available": -0.3525,
                    "total": -0.3525,
                    "currency": "ETH"  
"""
