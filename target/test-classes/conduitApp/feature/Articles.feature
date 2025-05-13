
Feature: Articles
    Background: Define URL
        Given url apiUrl
    #* def token = tokenResponse.authToken
    #* print 'Valor de apiUrl:', apiUrl

    Scenario:create new articulo
        #print 'Valor de apiUrl:', Token
        #Given header Authorization = 'Token '+token
        And path 'articles'
        And request
            """
            {
                "article": {
                    "tagList": [],
                    "title": "asdsas2SSSssdSSSWEs wssss",
                    "description": "das223",
                    "body": "dsa2da424s2"
                }
            }
            """
        When method post
        Then status 201




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
