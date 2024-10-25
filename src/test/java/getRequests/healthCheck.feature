Feature: A simple health check endpoint to confirm whether the API is up and running.

  Background:
    * url 'https://restful-booker.herokuapp.com'

  Scenario: A simple health check endpoint to confirm whether the API is up and running.
    Given path 'ping'
    When method GET
    Then status 201
    And print 'Response:', response

