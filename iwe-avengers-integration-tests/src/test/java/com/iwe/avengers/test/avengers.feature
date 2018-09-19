Feature: Perform integrated tests on the Avengers registration API

Background:
* url 'https://nv6v4l1f7d.execute-api.us-east-1.amazonaws.com/dev/'

Scenario: Get Avenger by Id

Given path 'avengers','aaaa-bbbb-cccc-dddd'
When method get
Then status 200

Scenario: Creates a new Avenger

Given: path 'avengers'
And request {name: 'Captain America', secretIdentity: 'Steve Rogers'}
When method post
Then status 201