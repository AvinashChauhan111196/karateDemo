Feature: Get api with query parameters

Scenario: get all active users

* def query = {status:'active',gender:'male'}
Given url baseUrl+'/public/v1/users'
And params query 
When method Get
Then status 200 
* print response

Scenario: get all active users and get count

* def query = {status:'active'}
Given url baseUrl+'/public/v1/users'
And params query 
When method Get
Then status 200 
* def jsonResponse = response
* print jsonResponse
* def userCount = jsonResponse.data.length
* print userCount
* match userCount == 10