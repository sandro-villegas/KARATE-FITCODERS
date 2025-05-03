@debug
Feature: Articles
    Background: Define URL
        Given url apiUrl
    #Scenario: Create a new articles
    #Given path 'users/login'
    #And request
    #   """
    #  {
    #     "user": {
    #        "email": "zony123rbd@gmail.com",
    #         "password": "123456789"
    #    }
    # }
    # """
    #When method post
    #Then status 200
    #* def token =  response.user.token
    # * def tokenResponse = callonce read('classpath:Helpers/createToken.feature')
    #* def token = tokenResponse.authToken
    Scenario: create new articulo
        #Given header Authorization = 'Token' + token
        Given path 'articles'
# And request {
#"article": {
# "tagList": [],
#"title": "bla bla",
#"description": "test test",
#"body": "body"
#}
#}
#When method post
#Then status 200
