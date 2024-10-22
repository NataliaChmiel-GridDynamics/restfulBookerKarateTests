Feature: Creates a new booking in the API

  Background:
    * url 'https://restful-booker.herokuapp.com'

  Scenario: Creates a new booking in the API
    Given path 'booking'
    And header Content-Type = 'application/json'
    And header Accept = 'application/json'
    And request {"firstname" : "Jim","lastname" : "Brown","totalprice" : 111,"depositpaid" : true,"bookingdates" : {"checkin" : "2018-01-01","checkout" : "2019-01-01"},"additionalneeds" : "Breakfast"}
    When method POST
    Then status 200
    And print 'Response:', response
