@HU-BAN-009
Feature: Actualizar un personaje existente

  Background:
    * configure ssl = true
    * def baseUrl = 'http://bp-se-test-cabcd9b246a5.herokuapp.com/testuser/api/characters'

  Scenario: Actualizar un personaje con datos válidos
    * def characterId = 287
    * def updatedCharacter =
      """
    {
      "name": "Gilgamesh FSN Unlimited Blades",
      "alterego": "Updated Alterego",
      "description": "Updated Description",
      "powers": ["Updated Power"]
    }
      """
    Given url baseUrl + '/' + characterId
    And request updatedCharacter
    When method put
    Then status 200
    * print 'Response: ' + response.error
    And match response.name == 'Gilgamesh FSN Unlimited Blades'


