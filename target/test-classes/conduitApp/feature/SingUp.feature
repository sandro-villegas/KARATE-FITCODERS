@debug
Feature: Sign Up new user
    Background: Preconditions
        * def dataGenerator = Java.type('helpers.DataGenerator')
        Given url apiUrl

    Scenario Outline: Scenario Outline name: New user Sign Up
        # Generar datos aleatorios para el nuevo usuario
        * def randomEmail = dataGenerator.getRandomEmail()
        #* if (!isNoAuth) karate.configure('headers', { Authorization: 'Token ' + accessToken })

        * def randomUsername = dataGenerator.getRandomUsername()
        # Configurar endpoint y cuerpo de la solicitud
        Given path 'users'
        And request
            """
            {
                "user": {
                    "email": "<email>",
                    "password": "<password>",
                    "username": "<username>"
                }
            }
            """

        When method POST
        Then status 201
        Examples:
            | email          | password | username          |
            | #(randomEmail) | 12345689 | #(randomUsername) |
