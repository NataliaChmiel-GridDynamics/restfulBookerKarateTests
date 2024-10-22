Feature: Returns a specific booking based upon the booking id provided



  Background:
    * url 'https://restful-booker.herokuapp.com'

  Scenario: Returns a specific booking based upon the booking id provided

    * id = 1026
    Given path 'booking', id
    When method GET
    Then status 200
    And print 'Response:', response
