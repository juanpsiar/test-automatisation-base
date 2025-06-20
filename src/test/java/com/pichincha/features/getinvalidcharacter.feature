@HU-BAN-008
Feature: Obtener un personaje con ID inválido

  Background:
    * configure ssl = true
    * def baseUrl = 'http://bp-se-test-cabcd9b246a5.herokuapp.com/testuser/api/characters'

  Scenario: Verificar que la API no devuelve un personaje con un ID inválido
    * url baseUrl
    * def characterId = 999
    * url baseUrl + '/' + characterId
    When method get
    Then status 404
    And match response.error == "Character not found"