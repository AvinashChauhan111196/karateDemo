Feature: Create user using put api

Background:
* url 'https://gorest.co.in'
  
* def requestPayload =
"""
{
	"status": "inactive"
}
"""

Scenario: Create a user  with given data 

Given path '/public/v1/users/911275'
And request requestPayload
And header Authorization = 'Bearer ' + tokenID
When method put
Then status 200
And match $.data.id == '#present'
And match $.data.name == '#present'
