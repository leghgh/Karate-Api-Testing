Feature: Create a new Trello card

  Background:
    * url 'https://api.trello.com/1'
    * def apiKey = '***'
    * def token = '***'  
    * def boardId = '***'
    * def listId = '***'
  Scenario: Create a new card in a Trello board
    Given path 'cards'
    And param key = apiKey
    And param token = token
    And param idList = listId
    And param name = 'New Trello Card'
    And param desc = 'Card created for testing'
    
    When method post
    Then status 200
    And match response.id != null
    And print 'Card Successfully created :', response.id
