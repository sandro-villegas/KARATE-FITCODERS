Feature: Articles
    Background: Define URL
        Given url apiUrl
        * print 'Valor de apiUrl:', apiUrl
    Scenario: Create a new articles
        Given path 'users/login'
        And request
            """
            {
                "user": {
                    "email": "#(UserEmail)",
                    "password": "#(UserPassword)"
                }
            }
            """
        When method post
        Then status 200
        * def token =  response.user.token