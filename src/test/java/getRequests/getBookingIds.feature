Feature: Returns the ids of all the bookings that exist within the API. Can take optional query strings to search and return a subset of booking ids.

  Background:
    * url 'https://restful-booker.herokuapp.com'

  Scenario: Returns the ids of all the bookings that exist within the API. Can take optional query strings to search and return a subset of booking ids.

    Given path 'booking'
    When method GET
    Then status 200
    And print 'Response:', response
