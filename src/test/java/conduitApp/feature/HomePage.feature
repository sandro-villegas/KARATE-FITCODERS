Feature: Test for the home page
    Background:define Url
        Given url  apiUrl

    Scenario: Get all tags
        Given path 'tags'
        When method Get
        Then status 200
        And match response.tags contains ['Test','YouTube']
        And match response.tags ==  "#array"
        And match each response.tags == "#string"

#https://conduit-api.bondaracademy.com/api/articles/ara-25213
