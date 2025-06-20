@HU-BAN-010
Feature: Actualizar un personaje inexistente

  Background:
    * configure ssl = true
    * def baseUrl = 'http://bp-se-test-cabcd9b246a5.herokuapp.com/testuser/api/characters'

  Scenario: Actualizar un personaje que no existe
    * def characterId = 99999
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
    Then status 404
    * print 'Response: ' + response.error
    And match response.error == 'Character not found'


