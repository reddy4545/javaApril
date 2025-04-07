
Feature:coin filtering by Alphabets

Scenario: displaying coins by clicking on an alphabet
Given i am logged in to the backoffice
And I click on the coins tab
When I click on any alphabets 
Then I should see a list of coins whose name start with the letter A
