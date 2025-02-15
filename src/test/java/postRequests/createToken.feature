Feature: Create auth token for booking

  Background:
    * url 'https://restful-booker.herokuapp.com'

  Scenario: Creates a new auth token to use for access to the PUT and DELETE /booking
    Given path 'auth'
    And header Content-Type = 'application/json'
    And request { "username": "admin", "password": "password123" }
    When method POST
    Then status 200
    And print 'Response:', response
    * def token = response.token
    And print 'Saved Token:', token
