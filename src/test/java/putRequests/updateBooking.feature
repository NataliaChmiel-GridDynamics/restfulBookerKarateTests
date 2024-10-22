Feature: Create auth token for booking

  Background:
    * url 'https://restful-booker.herokuapp.com'
    * def username = "admin"
    * def password = "password123"

  Scenario: Creates a new auth token to use for access to the PUT and DELETE /booking
    Given path 'auth'
    And header Content-Type = 'application/json'
    And request { "username": username, "password": password }
    When method PUT
    Then status 200
    And print 'Response:', response
