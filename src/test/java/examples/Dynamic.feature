Feature: Sample API Testing

Background:
  # Common setup steps for all scenarios
  Given url 'https://httpbin.org'
  And header Content-Type = 'application/json'

Scenario: Verify GET Request
  Given path '/get'
  When method GET
  Then status 200
  And match response.url == 'https://httpbin.org/get'