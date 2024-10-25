Feature: Create auth token for booking

  Background:
    * url 'https://restful-booker.herokuapp.com'

  Scenario: Creates a new auth token to use for access to the PUT and DELETE /booking
    Given path 'booking/1'
    And header Content-Type = 'application/json'
    And header Authorization = 'Basic YWRtaW46cGFzc3dvcmQxMjM='
    When method DELETE
    Then status 200
    And print 'Response:', response

