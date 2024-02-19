Feature: Get api feature

Scenario: get user details
Given url baseUrl+'//public/v2/users'
And path '1196'
When method GET
Then status 200
* print response
* def jsonResponse = response
* print jsonResponse
* def actName = jsonResponse.name
* def id = jsonResponse.id
* def gender = jsonResponse.gender
* def status = jsonResponse.status
* print actName
* match actName == 'Parvati Bharadwaj'
* match id == 1196
* match gender == 'female'
* match status == 'inactive'


Scenario: get user details - not found
Given url baseUrl+'//public/v2/users'
And path '1'
When method GET
Then status 404