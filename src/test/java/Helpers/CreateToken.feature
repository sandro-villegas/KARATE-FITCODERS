Feature: Articles
    Background: Define URL
        Given url apiUrl
        * print 'Valor de apiUrl:', apiUrl
    Scenario: Create a new LOGIN
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
        * def authToken =  response.user.token
