@HU-BAN-003
Feature: Crear un personaje con data errónea

  Background:
    * configure ssl = true
    * def baseUrl = 'http://bp-se-test-cabcd9b246a5.herokuapp.com/testuser/api/characters'
    * headers { 'Content-Type': 'application/json' }


  Scenario: Verificar que la API no puede crear un personaje nuevo
    * def newCharacter =
      """
      {"name": "", }
      """
    Given url baseUrl
    And request newCharacter
    When method post
    Then status 400
    And match response.name == 'Name is required'


