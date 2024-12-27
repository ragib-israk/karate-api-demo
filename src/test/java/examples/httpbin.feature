Feature: Testing httpbin.org API

Scenario: Test HTTP Methods (GET)
  Given url 'https://httpbin.org/get'
  When method GET
  Then status 200

Scenario: Test HTTP Methods (POST)
  Given url 'https://httpbin.org/post'
  And request { "name": "karate", "type": "API" }
  When method POST
  Then status 200
  And match response.json.name == 'karate'
  And match response.json.type == 'API'